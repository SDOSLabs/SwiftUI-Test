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
                NavigationLink("Text", destination: TextOptionsView())
            }
            .navigationBarTitle("Home", displayMode: .automatic)
            .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
