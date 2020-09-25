//
//  TextSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 06/08/2020.
//

import SwiftUI

struct TextSimpleView: View {
    var body: some View {
        Group {
            Text("Hello, World!")
        }
        .navigationBarTitle("Text Simple", displayMode: .inline)
    }
}

struct TextSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextSimpleView()
                .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
    }
}
