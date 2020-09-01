//
//  ListEditView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 31/08/2020.
//

import SwiftUI

struct ListEditView : View {
    @State var isEditMode: EditMode = .inactive
    @State private var items = Film.mockFilms
    
    var body: some View {
        VStack(spacing: 15) {
            List {
                ForEach(items) {
                    Text($0.name)
                }
                .onDelete {
                    items.remove(atOffsets: $0)
                }
                .onMove {
                    items.move(fromOffsets: $0, toOffset: $1)
                }
            }
            Group {
                if isEditMode == .inactive {
                    Button("Start Edit") {
                        withAnimation {
                            isEditMode = .active
                        }
                    }
                    .padding()
                    .background(Color.green.opacity(0.3))
                } else {
                    Button("End Edit") {
                        withAnimation {
                            isEditMode = .inactive
                        }
                    }
                    .padding()
                    .background(Color.red.opacity(0.3))
                }
            }
            .padding()
        }
        .navigationBarItems(trailing: EditButton())
        .environment(\.editMode, $isEditMode)
        .navigationBarTitle("Edit", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
    
    struct Film: Identifiable {
        let id = UUID()
        
        var name: String
        
        static let mockFilms = [Film(name: "Iron Man"),
                                Film(name: "The Incredible Hulk"),
                                Film(name: "Iron Man 2"),
                                Film(name: "Thor"),
                                Film(name: "Captain America"),
                                Film(name: "Marvel's The Avengers")]
    }
}

struct ListEditView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListEditView()
        }
    }
}
