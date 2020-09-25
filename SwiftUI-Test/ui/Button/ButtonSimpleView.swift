//
//  ButtonSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 06/08/2020.
//

import SwiftUI

struct ButtonSimpleView: View {
    var body: some View {
        VStack(spacing: 30) {
            Button("Hello, Button!") {
                //Button pressed, do something
            }
            
            Button(action: {
                //Button pressed, do something
            }) {
                VStack {
                    Text("Hello")
                    Divider()
                        .background(Color.red)
                        .frame(width: 100, height: 1)
                    Text("Button!")
                }
            }
        }
        .navigationBarTitle("Button Simple", displayMode: .inline)
    }
}

struct ButtonSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ButtonSimpleView()
                .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
    }
}
