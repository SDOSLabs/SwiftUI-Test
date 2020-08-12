//
//  SelectableButtonStyle.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 11/08/2020.
//

import SwiftUI

struct SelectableButtonStyle<T: View>: ButtonStyle {
    private let render: (Self.Configuration) -> T
    
    public init(@ViewBuilder _ render: @escaping (Self.Configuration) -> T) {
        self.render = render
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        return self.render(configuration)
    }
}
