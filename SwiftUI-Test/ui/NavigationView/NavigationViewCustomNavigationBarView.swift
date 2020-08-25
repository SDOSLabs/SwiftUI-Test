//
//  NavigationViewCustomNavigationBarView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 24/08/2020.
//

import SwiftUI

struct NavigationViewCustomNavigationBarView: View {
    var body: some View {
        VStack {
            HeaderSectionView("navigationColor")
            NavigationViewCustomNavigationBarItemFirstView()
        }
        .navigationBarTitle("Custom NavigatoinBar", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewCustomNavigationBarItemFirstView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Hello, World!")
                NavigationLink("Go to Second", destination: NavigationViewCustomNavigationBarItemSecondView())
            }
            .navigationBarTitle("First", displayMode: .large)
            .navigationColor(background: UIColor.green.withAlphaComponent(0.5), title: .white)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.yellow.opacity(0.3))
            
        }
    }
}

struct NavigationViewCustomNavigationBarItemSecondView: View {
    var body: some View {
        Group {
            Text("Hello, World!")
        }
        .navigationBarTitle("Second", displayMode: .inline)
        .navigationColor(background: UIColor.blue.withAlphaComponent(0.5), title: .white)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.red.opacity(0.3))
        
    }
}

struct NavigationViewCustomNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationViewCustomNavigationBarView()
        }
    }
}
