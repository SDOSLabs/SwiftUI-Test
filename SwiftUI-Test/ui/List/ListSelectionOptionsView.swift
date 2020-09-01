//
//  ListSelectionOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 31/08/2020.
//

import SwiftUI

struct ListSelectionOptionsView : View {
    var body: some View {
        List {
            NavigationLink("Single", destination: ListSelectionSingleView())
            NavigationLink("Multiple", destination: ListSelectionMultipleView())
        }
        .navigationBarTitle("Selection", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ListSelectionSingleView : View {
    @State var selection: UUID?
    
    @State private var items = Film.mockFilms
    
    var body: some View {
        VStack(spacing: 15) {
            List(selection: $selection) {
                ForEach(items) {
                    Text($0.name)
                }
                
            }
            if let uuid = selection, let film = items.first(where: { $0.id == uuid }) {
                VStack(spacing: 5) {
                    Text("Your select:")
                        .font(.headline)
                    Text("\(film.name)")
                        .font(.body)
                }
                .padding()
            }
        }
        .navigationBarItems(trailing: EditButton())
        .navigationBarTitle("Single", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
    struct Film: Identifiable {
        let id: UUID = UUID()
        
        var name: String
        
        static let mockFilms = [Film(name: "Iron Man"),
                                Film(name: "The Incredible Hulk"),
                                Film(name: "Iron Man 2"),
                                Film(name: "Thor"),
                                Film(name: "Captain America: The First Avenger"),
                                Film(name: "Marvel's The Avengers")]
    }
}

struct ListSelectionMultipleView : View {
    @State var selection = Set<UUID>()
    
    @State private var items = Film.mockFilms
    
    var body: some View {
        VStack(spacing: 15) {
            List(selection: $selection) {
                ForEach(items) {
                    Text($0.name)
                }
                
            }
            showSelectedFilms()
        }
        .navigationBarItems(trailing: EditButton())
        .navigationBarTitle("Multiple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
    func showSelectedFilms() -> some View {
        if !selection.isEmpty {
            let result = items.compactMap { (film) -> Film? in
                selection.contains(film.id) ? film : nil
            }.map {
                return $0.name
            }
            return AnyView(
                VStack(spacing: 5) {
                    Text("Your select:")
                        .font(.headline)
                    Text("\(result.joined(separator: ", "))")
                        .font(.body)
                }
                .padding())
        } else {
            return AnyView(EmptyView())
        }
    }
    
    struct Film: Identifiable {
        let id: UUID = UUID()
        
        var name: String
        
        static let mockFilms = [Film(name: "Iron Man"),
                                Film(name: "The Incredible Hulk"),
                                Film(name: "Iron Man 2"),
                                Film(name: "Thor"),
                                Film(name: "Captain America: The First Avenger"),
                                Film(name: "Marvel's The Avengers")]
    }
}

struct ListSelectionOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListSelectionOptionsView()
        }
    }
}
