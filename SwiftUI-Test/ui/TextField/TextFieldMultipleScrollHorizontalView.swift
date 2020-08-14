//
//  TextFieldMultipleScrollHorizontalView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 13/08/2020.
//

import SwiftUI

struct TextFieldMultipleScrollHorizontalView: View {
    var body: some View {
        GeometryReader { geometry in
            Group {
                HStack {
                    TextFieldStyleView()
                        .frame(width: geometry.frame(in: .global).size.width / 2)
                    TextFieldStyleView()
                        .frame(width: geometry.frame(in: .global).size.width / 2)
                    
                }
            }
            .navigationBarTitle("Multiple Scroll", displayMode: .inline)
            .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        }
    }
}

struct TextFieldMultipleScrollHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldMultipleScrollHorizontalView()
    }
}
