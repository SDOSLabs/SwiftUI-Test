//
//  SliderOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 18/08/2020.
//

import SwiftUI

struct SliderOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: SliderSimpleView())
            NavigationLink("Style", destination: SliderStyleView())
        }
        .navigationBarTitle("Slider Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct SliderOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SliderOptionsView()
        }
    }
}
