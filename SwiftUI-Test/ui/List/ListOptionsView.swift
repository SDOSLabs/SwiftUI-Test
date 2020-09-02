//
//  ListOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 31/08/2020.
//

import SwiftUI

struct ListOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: ListSimpleView())
            NavigationLink("Style", destination: ListStyleOptionsView())
            NavigationLink("Navigate", destination: ListNavigationView())
            NavigationLink("Selection", destination: ListSelectionOptionsView())
            NavigationLink("Edit", destination: ListEditView())
            Divider()
        }
        .navigationBarTitle("List Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListOptionsView()
        }
    }
}
