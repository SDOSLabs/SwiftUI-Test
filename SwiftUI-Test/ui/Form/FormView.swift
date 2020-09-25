//
//  FormView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 07/09/2020.
//

import SwiftUI

struct FormView: View {
    let itemsPicker = ["Sevilla", "Cádiz", "Huelva", "Córdoba", "Málaga", "Granada", "Jaén", "Álmería"]
    
    @State private var textFieldSelection: String = ""
    @State private var pickerSelection: String = "Sevilla"
    @State private var sliderSelection: Double = 50
    @State private var colorSelection: Color = .red
    @State private var datePickerSelection: Date = Date()
    @State private var toggleSelection: Bool = true
    
    var body: some View {
        Form {
            Section(header: Text("First section")) {
                Text("Hello, World!")
                TextField("Select text", text: $textFieldSelection)
                Slider(value: $sliderSelection, in: 0...100)
                Picker("Select province", selection: $pickerSelection) {
                    ForEach(itemsPicker, id: \.self) {
                        Text($0)
                    }
                }.navigationBarTitleDisplayMode(.inline)
            }
            Section(header: Text("Second section")) {
                ColorPicker("Select Color", selection: $colorSelection)
                DatePicker("Select date", selection: $datePickerSelection)
                Toggle("Enabled", isOn: $toggleSelection)
                Button("Done") {
                    //Do something
                }
                .disabled(!toggleSelection)
            }
            .listRowBackground(Color.yellow.opacity(0.3))
            
            Section() {
                HStack {
                    Text("Version")
                    Spacer()
                    Text("1.0.0")
                }
            }
        }
        .navigationBarTitle("Form", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FormView()
        }
    }
}
