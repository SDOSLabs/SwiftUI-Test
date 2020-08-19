//
//  SliderSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 18/08/2020.
//

import SwiftUI

struct SliderSimpleView: View {
    @State var slider1: Double = 2
    @State var slider2: Double = 40
    @State var slider3: Double = 50
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("Simple")
                    Slider(value: $slider1, in: 0...100)
                    Text("Value: \(slider1)")
                    Divider()
                }
                Group {
                    HeaderSectionView("Simple with step")
                    Slider(value: $slider2, in: 0...1000, step: 10)
                    Text("Value: \(slider2)")
                    Divider()
                }
                Group {
                    HeaderSectionView("Simple with label")
                    Slider(value: $slider3, in: -100...100, minimumValueLabel: Text("Min"), maximumValueLabel: Text("Max")) { Text("") }
                    Text("Value: \(slider3)")
                    Divider()
                }
            }
            .padding()
        }
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct SliderSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SliderSimpleView()
        }
    }
}
