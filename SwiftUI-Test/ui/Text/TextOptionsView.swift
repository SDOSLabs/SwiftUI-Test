//
//  TextOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 06/08/2020.
//

import SwiftUI

struct TextOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: TextSimpleView())
            NavigationLink("Style", destination: TextStyleView())
        }
        .navigationBarTitle("Text Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct TextOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextOptionsView()
        }
    }
}
