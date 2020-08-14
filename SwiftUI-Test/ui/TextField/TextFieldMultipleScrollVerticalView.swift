//
//  TextFieldMultipleScrollVerticalView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 13/08/2020.
//

import SwiftUI

struct TextFieldMultipleScrollVerticalView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollViewKeyboard {
                HStack {
                    VStack {
                        TextFieldStyleView(disableScroll: true)
                            .frame(width: geometry.frame(in: .global).size.height / 2)
                        TextFieldStyleView(disableScroll: true)
                            .frame(width: geometry.frame(in: .global).size.height / 2)
                    }
                    .frame(width: geometry.frame(in: .global).size.width / 2)
                    TextFieldStyleView(disableScroll: true)
                        .frame(width: geometry.frame(in: .global).size.width / 2)
                }
            }
            .navigationBarTitle("Multiple Scroll", displayMode: .inline)
            .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        }
    }
}

struct TextFieldMultipleScrollVerticalView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldMultipleScrollVerticalView()
    }
}
