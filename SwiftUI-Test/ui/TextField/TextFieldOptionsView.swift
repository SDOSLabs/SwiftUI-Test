//
//  TextFieldOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 12/08/2020.
//

import SwiftUI

struct TextFieldOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: TextFieldSimpleView())
            NavigationLink("Style", destination: TextFieldStyleView())
            NavigationLink("Simple Scroll", destination: TextFieldSimpleScrollView())
            NavigationLink("Multiple Scroll Vertical", destination: TextFieldMultipleScrollVerticalView())
            NavigationLink("Multiple Scroll Horizontal", destination: TextFieldMultipleScrollHorizontalView())
        }
        .navigationBarTitle("TextField Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct TextFieldOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextFieldOptionsView()
        }
    }
}
