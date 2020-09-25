//
//  ButtonOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 06/08/2020.
//

import SwiftUI

struct ButtonOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: ButtonSimpleView())
            NavigationLink("Style", destination: ButtonStyleView())
        }
        .navigationBarTitle("Button Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ButtonOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ButtonOptionsView()
        }
    }
}
