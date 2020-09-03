//
//  PickerSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 02/09/2020.
//

import SwiftUI

struct PickerSimpleView: View {
    let items = ["Sevilla", "Cádiz", "Huelva", "Córdoba", "Málaga", "Granada", "Jaén", "Álmería" ]
    let flavors = Flavor.allCases
    @State private var selection1: String = "Sevilla"
    @State private var selection2: String = "Huelva"
    @State private var selection3: Flavor = Flavor.chocolate
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    HeaderSectionView("Init")
                    Picker("Select one option", selection: $selection1) {
                        ForEach(items, id: \.self) {
                            Text("\($0)")
                                .foregroundColor(.blue)
                        }
                    }
                    if !selection1.isEmpty {
                        Text("Selection: \(selection1)")
                    }
                }
                Group {
                    HeaderSectionView("Init")
                    Picker(selection: $selection2, label: Text("Select one option")) {
                        ForEach(items, id: \.self) {
                            Text("\($0)")
                                .foregroundColor(.blue)
                        }
                    }
                    if !selection2.isEmpty {
                        Text("Selection: \(selection2)")
                    }
                }
                Group {
                    HeaderSectionView("Init")
                    Picker(selection: $selection3, label: Text("Select one option")) {
                        ForEach(Flavor.allCases, id: \.self) {
                            Text("\($0.rawValue)")
                                .foregroundColor(.orange)
                        }
                    }
                    Text("Selection: \(selection3.rawValue)")
                }
            }
        }
        .padding()
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate = "Chocolate"
        case vanilla = "Vanilla"
        case strawberry = "Strawberry"

        var id: String { self.rawValue }
    }
}

struct PickerSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PickerSimpleView()
        }
    }
}
