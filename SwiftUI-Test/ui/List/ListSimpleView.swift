//
//  ListSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 31/08/2020.
//

import SwiftUI

struct ListSimpleView: View {
    
    var body: some View {
        List {
            NavigationLink("Simple", destination: ListSimpleSimpleView())
            NavigationLink("Section", destination: ListSimpleSectionView())
            NavigationLink("Collapsable", destination: ListSimpleCollapsableView())
        }
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListSimpleSimpleView: View {
    
    var body: some View {
        List {
            ForEach(0..<20) {
                Text("Index: \($0)")
            }
        }
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListSimpleSectionView: View {
    
    var body: some View {
        List {
            Section(header: Text("First Header"), footer: Text("First footer")) {
                ForEach(0..<10) {
                    Text("Index: \($0)")
                }
            }
            Section(header: Text("Second Header"), footer: Text("Second footer")) {
                ForEach(10..<20) {
                    Text("Index: \($0)")
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationBarTitle("Section", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListSimpleCollapsableView: View {
    let items: [RowItem] = RowItem.mockupItems
    
    var body: some View {
        List(items, children: \.list) { children in
            Text(children.name)
        }
        .navigationBarTitle("Collapsable", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct RowItem: Identifiable {
    let id = UUID()
    var name: String
    var list: [RowItem]?
    
    static let mockupItems: [RowItem] = {
        var item1 = RowItem(name: "Section 1", list: [RowItem(name: "Option 1"),
                                                         RowItem(name: "Option 2"),
                                                         RowItem(name: "Option 3"),
                                                         RowItem(name: "Option 4"),
                                                         RowItem(name: "Option 5")
        ])
        
        var item2 = RowItem(name: "Section 2", list: [RowItem(name: "Option 6"),
                                                         RowItem(name: "Option 7"),
                                                         RowItem(name: "Option 8"),
                                                         RowItem(name: "Option 9"),
                                                         RowItem(name: "Option 10")
        ])
        
        return [item1, item2]
    }()
}

struct ListSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListSimpleView()
        }
    }
}
