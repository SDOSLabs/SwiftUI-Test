//
//  ListStyleOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 01/09/2020.
//

import SwiftUI

struct ListStyleOptionsView: View {
    var body: some View {
        List {
            NavigationLink("listStyle: Plain", destination: ListStylePlainView())
            NavigationLink("listStyle: Inset", destination: ListStyleInsetView())
            NavigationLink("listStyle: Grouped", destination: ListStyleGroupedView())
            NavigationLink("listStyle: InsetGrouped", destination: ListStyleInsetGroupedView())
            NavigationLink("listStyle: Sidebar", destination: ListStyleSidebarView())
            NavigationLink("listRowBackground", destination: ListStyleRowBackgroundView())
        }
        .navigationBarTitle("Style", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListStylePlainView: View {
    
    var body: some View {
        List {
            ForEach(0..<30) {
                Text("Index: \($0)")
            }
        }
        .listStyle(PlainListStyle())
        .navigationBarTitle("Plain", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListStyleInsetView: View {
    
    var body: some View {
        List {
            ForEach(0..<30) {
                Text("Index: \($0)")
            }
        }
        .listStyle(InsetListStyle())
        .navigationBarTitle("Inset", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListStyleGroupedView: View {
    
    var body: some View {
        List {
            ForEach(0..<30) {
                Text("Index: \($0)")
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Grouped", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListStyleInsetGroupedView: View {
    
    var body: some View {
        List {
            ForEach(0..<30) {
                Text("Index: \($0)")
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle("InsetGrouped", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListStyleSidebarView: View {
    
    var body: some View {
        List {
            ForEach(0..<30) {
                Text("Index: \($0)")
            }
        }
        .listStyle(SidebarListStyle())
        .navigationBarTitle("Sidebar", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListStyleRowBackgroundView: View {
    
    var body: some View {
        List {
            ForEach(0..<30) {
                cell(index: $0)
            }
        }
        .navigationBarTitle("listRowBackground", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
    func cell(index: Int) -> some View {
        VStack(alignment: .leading) {
            Text("Index")
                .font(.caption)
            Text("\(index)")
                .font(.title2)
        }
        .listRowBackground((index % 2 == 0) ? Color.blue.opacity(0.3) : Color.orange.opacity(0.3))
    }
}

struct ListStyleOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListStyleOptionsView()
        }
    }
}
