//
//  Util.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 27/08/2020.
//

import SwiftUI

extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}
