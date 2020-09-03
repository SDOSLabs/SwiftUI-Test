//
//  PickerStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 03/09/2020.
//

import SwiftUI

struct PickerStyleView: View {
    @State private var selection1: Flavor = Flavor.chocolate
    @State private var selection2: Flavor = Flavor.chocolate
    @State private var selection3: Flavor = Flavor.chocolate
    @State private var selection4: Flavor = Flavor.chocolate
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("pickerStyle - WheelPickerStyle")
                    Picker("Select one option", selection: $selection1) {
                        ForEach(Flavor.allCases, id: \.self) {
                            Text("\($0.rawValue)")
                                .foregroundColor(.blue)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    Text("Selection: \(selection1.rawValue)")
                    Divider()
                }
                Group {
                    HeaderSectionView("pickerStyle - SegmentedPickerStyle")
                    Picker("Select one option", selection: $selection2) {
                        ForEach(Flavor.allCases, id: \.self) {
                            Text("\($0.rawValue)")
                                .foregroundColor(.blue)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Text("Selection: \(selection2.rawValue)")
                    Divider()
                }
                Group {
                    HeaderSectionView("pickerStyle - MenuPickerStyle")
                    Picker("Select one option", selection: $selection3) {
                        ForEach(Flavor.allCases, id: \.self) {
                            Text("\($0.rawValue)")
                                .foregroundColor(.blue)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Text("Selection: \(selection3.rawValue)")
                    Divider()
                }
                Group {
                    HeaderSectionView("pickerStyle - InlinePickerStyle")
                    Picker("Select one option", selection: $selection4) {
                        ForEach(Flavor.allCases, id: \.self) {
                            Text("\($0.rawValue)")
                                .foregroundColor(.blue)
                        }
                    }
                    .pickerStyle(InlinePickerStyle())
                    Text("Selection: \(selection4.rawValue)")
                    Divider()
                }
            }
        }
        .padding()
        .navigationBarTitle("Style", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate = "Chocolate"
        case vanilla = "Vanilla"
        case strawberry = "Strawberry"

        var id: String { self.rawValue }
    }
}

struct PickerStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PickerStyleView()
        }
    }
}
