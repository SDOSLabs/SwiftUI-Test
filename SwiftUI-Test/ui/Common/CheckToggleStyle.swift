//
//  CheckToggleStyle.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 20/08/2020.
//

import SwiftUI

public struct CheckToggleStyle: ToggleStyle {
    public func makeBody(configuration: Configuration) -> some View {
        HStack() {
            configuration.label
                .frame(maxWidth: .infinity, alignment: .leading)
            Button(action: {
                configuration.isOn.toggle()
            }, label: {
                Group {
                    if configuration.isOn {
                        Image("check-box-on")
                            .resizable()
                            .scaledToFit()
                    } else {
                        Image("check-box-off")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .frame(width: 25, height: 25)
                
            })
            .frame(width: 44, height: 44)
        }
    }
}

struct CheckToggleStyle_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Toggle("Option", isOn: .constant(true))
                .toggleStyle(CheckToggleStyle())
        }
        .padding()
    }
}
