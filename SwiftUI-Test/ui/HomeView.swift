//
//  HomeView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 03/08/2020.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Login", destination: LoginOptionsView())
                NavigationLink("Group", destination: GroupView())
            }
            .navigationBarTitle("Home", displayMode: .automatic)
            .background(NavigationConfigurator(backgroundColor: Constant.Color.blue, titleColor: .white))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
