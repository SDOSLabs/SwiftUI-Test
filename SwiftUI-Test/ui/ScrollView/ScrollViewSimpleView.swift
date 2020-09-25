//
//  ScrollViewSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 25/08/2020.
//

import SwiftUI

struct ScrollViewSimpleView: View {
    var body: some View {
        List {
            NavigationLink("Vertical", destination: ScrollViewSimpleVerticalView())
            NavigationLink("Horizontal", destination: ScrollViewSimpleHorizontalsView())
        }
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ScrollViewSimpleVerticalView: View {
    var body: some View {
        VStack {
            HeaderSectionView("Init vertical")
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(0..<100) {
                        Text("Index: \($0)")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.yellow.opacity(0.3))
        }
        .padding()
        .navigationBarTitle("Vertical", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ScrollViewSimpleHorizontalsView: View {
    var body: some View {
        VStack {
            HeaderSectionView("Init horizontal")
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<100) {
                        Text("Index: \($0)")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.yellow.opacity(0.3))
        }
        .padding()
        .navigationBarTitle("Horizontal", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        
    }
}

struct ScrollViewSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrollViewSimpleView()
        }
    }
}
