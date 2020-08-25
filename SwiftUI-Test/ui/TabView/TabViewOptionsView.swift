//
//  TabViewOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 25/08/2020.
//

import SwiftUI

struct TabViewOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: TabViewSimpleView())
            NavigationLink("Simple selection", destination: TabViewSimpleSelectionView())
            NavigationLink("Style", destination: TabViewStyleOptionsView())
        }
        .navigationBarTitle("TabView Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct TabViewOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TabViewOptionsView()
        }
    }
}
