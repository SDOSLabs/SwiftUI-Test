//
//  ListNavigationView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 01/09/2020.
//

import SwiftUI

struct ListNavigationView: View {
    @State private var navigateToNext: Int?
    
    var body: some View {
        List {
            ForEach(0..<30) {
                if $0 < 10 {
                    navigationLinkShow($0)
                } else if $0 < 20 {
                    navigationLinkEmpty($0)
                } else {
                    navigationLinkHidden($0)
                }
            }
        }
        .navigationBarTitle("Navigation", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
    func navigationLinkShow(_ index: Int) -> some View {
        NavigationLink("Show: Go to index: \(index)", destination: Text("Index: index"))
    }
    
    func navigationLinkEmpty(_ index: Int) -> some View {
        HStack {
            Text("Empty: Go to index: \(index)")
        }
        .overlay(
            NavigationLink(destination: Text("Index: \(index)")) {
                EmptyView()
            }
        )
    }
    
    func navigationLinkHidden(_ index: Int) -> some View {
        HStack {
            Button("Hidden: Go to index: \(index)") {
                navigateToNext = index
            }
            .buttonStyle(BorderlessButtonStyle())
        }
        .overlay(
            NavigationLink(
                destination: Text("Index: \(index)"),
                tag: index,
                selection: $navigateToNext) {
                EmptyView()
            }
            .hidden()
        )
    }
}

struct ListNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListNavigationView()
        }
    }
}
