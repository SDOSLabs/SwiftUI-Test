//
//  KeyboardManager.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 13/08/2020.
//

import SwiftUI
import UIKit

extension View {
    public func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

public struct ScrollViewKeyboard<Content: View>: View {
    var disableScroll: Bool
    let content: () -> Content
    
    @ObservedObject private var manager = KeyboardManager()
    
    init(disableScroll: Bool = false, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.disableScroll = disableScroll
    }
    
    public var body: some View {
        Group {
            if disableScroll {
                Group(content: content)
            } else {
                ScrollView(content: content)
                    .modifier(KeyboardScroll(manager, disableScroll: disableScroll))
            }
        }
    }
}

public struct KeyboardScroll: ViewModifier {
    @ObservedObject var manager: KeyboardManager
    let disableScroll: Bool
    
    public init(_ manager: KeyboardManager, disableScroll: Bool = false) {
        self.manager = manager
        self.disableScroll = disableScroll
    }
    
    public func body(content: Content) -> some View {
        Group {
            if disableScroll {
                content
            } else {
                VStack {
                    content
                    if manager.keyboardRect.height > 0 {
                        Color.clear
                            .frame(height: manager.keyboardRect.height)
                    }
                }
                .onAppear { manager.addObserver() }
                .onDisappear { manager.removeObserver() }
                .animation(.easeInOut(duration: 0.2))
            }
        }
    }
}

final public class KeyboardManager: ObservableObject {
    public var keyboardIsHidden = true
    
    @Published var inset: CGFloat = 0
    @Published var keyboardRect: CGRect = .zero
    
    var showField: String? = nil
    
    func addObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChangeFrame(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func removeObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    deinit {
        removeObserver()
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        if keyboardIsHidden {
            keyboardIsHidden = false
            if let rect = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
                keyboardRect = rect
            }
        }
    }
    
    @objc func keyboardWillChangeFrame(notification: Notification) {
        if let rect = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
            keyboardRect = rect
        }
    }
    
    @objc func keyboardWillHide(notification: Notification) {
        keyboardIsHidden = true
        keyboardRect = .zero
    }
}
