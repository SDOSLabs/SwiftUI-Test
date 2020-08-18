//
//  ImageOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 14/08/2020.
//

import SwiftUI

struct ImageOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Style", destination: ImageStyleView())
            NavigationLink("URL", destination: ImageURLView())
        }
        .navigationBarTitle("Image Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ImageOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ImageOptionsView()
        }
    }
}
