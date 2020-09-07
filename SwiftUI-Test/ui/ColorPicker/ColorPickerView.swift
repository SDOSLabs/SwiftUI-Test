//
//  ColorPickerView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/09/2020.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var colorSelected1: Color = .red
    @State private var colorSelected2: Color = .blue
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("Init")
                    ColorPicker("Select a color", selection: $colorSelected1)
                    Divider()
                }
                Group {
                    HeaderSectionView("labelsHidden")
                    ColorPicker("Select a color", selection: $colorSelected2)
                        .labelsHidden()
                    Divider()
                }
            }
            .padding()
        }.navigationBarTitle("ColorPicker", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
