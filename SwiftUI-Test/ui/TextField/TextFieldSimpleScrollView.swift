//
//  TextFieldSimpleScroll.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 13/08/2020.
//

import SwiftUI

struct TextFieldSimpleScrollView: View {
    var body: some View {
        ScrollViewKeyboard {
            VStack(spacing: 10) {
                ForEach((1...20), id: \.self) {
                    TextField("Placeholder \($0)", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                ForEach((1...10), id: \.self) {
                    SecureField("Secure placeholder \($0)", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
            .padding()
        }
        .navigationBarTitle("Simple Scroll", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct TextFieldSimpleScrollView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldSimpleScrollView()
    }
}
