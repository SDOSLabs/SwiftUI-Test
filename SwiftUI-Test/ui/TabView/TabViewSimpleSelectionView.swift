//
//  TabViewSimpleSelectionView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 25/08/2020.
//

import SwiftUI

struct TabViewSimpleSelectionView: View {
    var body: some View {
        VStack {
            HeaderSectionView("Init")
            TabViewSimpleSelectionInitView()
        }
        .navigationBarTitle("Simple selection", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct TabViewSimpleSelectionInitView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Group {
                Button("Go to Second Screen") {
                    selection = 1
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
                .tabItem {
                    Image(systemName: "1.circle.fill")
                    Text("First")
                }
                .tag(0)
                
                Button("Go to First Screen") {
                    selection = 0
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.red.opacity(0.3))
                .tabItem {
                    Image(systemName: "2.circle.fill")
                    Text("Second")
                }
                .tag(1)
            }
        }
        .border(Color.black, width: 1)
    }
}

struct TabViewSimpleSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSimpleSelectionView()
    }
}
