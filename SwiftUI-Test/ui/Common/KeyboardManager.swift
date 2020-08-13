//
//  KeyboardManager.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 13/08/2020.
//

import SwiftUI
import UIKit

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
