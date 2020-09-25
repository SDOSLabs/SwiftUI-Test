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
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            self.hideKeyboard()
        }
    }
}
