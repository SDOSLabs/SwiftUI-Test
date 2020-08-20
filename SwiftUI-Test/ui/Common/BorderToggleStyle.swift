//
//  BorderToggleStyle.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 20/08/2020.
//

import SwiftUI

public struct BorderToggleStyle: ToggleStyle {
    public var tint: Color
    
    public func makeBody(configuration: Configuration) -> some View {
        Group {
            if configuration.isOn {
                Toggle(configuration)
                    .toggleStyle(SwitchToggleStyle(tint: tint))
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(tint, lineWidth: 1)
                    )
            } else {
                Toggle(configuration)
                    .toggleStyle(SwitchToggleStyle(tint: tint))
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
        }
    }
}

struct BorderToggleStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Toggle("Option", isOn: .constant(true))
                .toggleStyle(BorderToggleStyle(tint: .red))
        }
        .padding()
    }
}
