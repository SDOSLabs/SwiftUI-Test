//
//  ToggleOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 19/08/2020.
//

import SwiftUI

struct ToggleOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: ToggleSimpleView())
            NavigationLink("Style", destination: ToggleStyleView())
        }
        .navigationBarTitle("Toogle Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ToggleOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ToggleOptionsView()
        }
    }
}
