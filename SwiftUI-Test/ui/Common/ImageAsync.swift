//
//  ImageAsync.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 17/08/2020.
//

import SwiftUI
import Combine

public struct ImageAsync: View {
    @ObservedObject var imageLoader: ImageLoader
    private let content: ((Image) -> Image)?
    fileprivate var placeholder: AnyView? = nil
    
    init(_ url: String?, content: ((Image) -> Image)? = nil) {
        imageLoader = ImageLoader(url)
        self.content = content
    }
    
    init(_ url: URL?, placeholder: AnyView? = nil, content: ((Image) -> Image)? = nil) {
        imageLoader = ImageLoader(url)
        self.content = content
    }
    
    public var body: some View {
        let image: Image?
        if let i = imageLoader.image {
            image = Image(uiImage: i)
        } else {
            image = nil
        }
        let result: AnyView?
        if let image = image {
            if let r = content?(image) {
                result = AnyView(r)
            } else {
                result = AnyView(image)
            }
        } else {
            result = AnyView(Color.clear)
        }
        return Group {
            if imageLoader.image == nil {
                result.overlay(placeholder)
            } else {
                result
            }
        }.onAppear {
            imageLoader.load()
        }.onDisappear {
            imageLoader.cancel()
        }
    }
}

public extension ImageAsync {
    func placeholder<T: View>(@ViewBuilder content: () -> T) -> ImageAsync {
        var result = self
        result.placeholder = AnyView(content())
        return result
    }
    
    func placeholder(_ text: Text) -> ImageAsync {
        var result = self
        result.placeholder = AnyView(text)
        return result
    }
    
    func placeholder(_ image: Image) -> ImageAsync {
        var result = self
        result.placeholder = AnyView(image)
        return result
    }
}

public class ImageLoader: ObservableObject {
    @Published public var image: UIImage? = nil
    private let url: URL?
    private var cancellable: AnyCancellable? = nil
    
    init(_ url: String?) {
        if let url = url {
            self.url = URL(string: url)
        } else {
            self.url = nil
        }
    }
    
    init(_ url: URL?) {
        self.url = url
    }
    
    deinit {
        cancel()
    }
    
    func load() {
        guard let url = url else { return }
        cancel()
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue(label: "ImageQueue", qos: DispatchQoS.background))
            .map {
                if let image = UIImage(data: $0.data) {
                    return image
                } else {
                    return nil
                }
            }
            .replaceError(with: UIImage(named: "error"))
            .replaceNil(with: UIImage(named: "error"))
            .receive(on: DispatchQueue.main)
            .assign(to: \.image, on: self)
    }
    
    func cancel() {
        cancellable?.cancel()
    }
}
