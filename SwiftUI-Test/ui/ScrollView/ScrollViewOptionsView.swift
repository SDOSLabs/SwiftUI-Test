//
//  ScrollViewOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 25/08/2020.
//

import SwiftUI

struct ScrollViewOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: ScrollViewSimpleView())
            NavigationLink("ScrollViewReader", destination: ScrollViewScrollToView())
        }
        .navigationBarTitle("ScrollView Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ScrollViewOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrollViewOptionsView()
        }
    }
}
