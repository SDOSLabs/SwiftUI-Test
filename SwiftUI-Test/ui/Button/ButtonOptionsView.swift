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
            NavigationLink("Style", destination: TextStyleView())
        }
        .navigationBarTitle("Text Options", displayMode: .inline)
    }
}

struct ButtonOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ButtonOptionsView()
                .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
    }
}
