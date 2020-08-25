//
//  TabViewSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 25/08/2020.
//

import SwiftUI

struct TabViewSimpleView: View {
    var body: some View {
        VStack {
            HeaderSectionView("Init")
            TabViewSimpleInitView()
        }
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct TabViewSimpleInitView: View {
    
    var body: some View {
        TabView {
            Group {
                Text("First Screen")
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color.yellow.opacity(0.3))
                    .tabItem {
                        Image(systemName: "1.circle.fill")
                        Text("First")
                    }
                Text("Second Screen")
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color.red.opacity(0.3))
                    .tabItem {
                        Image(systemName: "2.circle.fill")
                        Text("Second")
                    }
            }
        }
        .border(Color.black, width: 1)
    }
}

struct TabViewSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TabViewSimpleView()
        }
    }
}
