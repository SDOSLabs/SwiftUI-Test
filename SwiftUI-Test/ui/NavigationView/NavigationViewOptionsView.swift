//
//  NavigationViewOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 21/08/2020.
//

import SwiftUI

struct NavigationViewOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Simple", destination: NavigationViewSimpleView())
            NavigationLink("Style", destination: NavigationViewStyleOptionsView())
            NavigationLink("Push", destination: NavigationViewPushView())
            NavigationLink("Push manual", destination: NavigationViewPushManualView())
            NavigationLink("Custom NavigationBar", destination: NavigationViewCustomNavigationBarView())
        }
        .navigationBarTitle("NavigationView Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct NavigationViewOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationViewOptionsView()
        }
    }
}
