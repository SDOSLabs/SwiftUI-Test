//
//  SliderStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 18/08/2020.
//

import SwiftUI

struct SliderStyleView: View {
    @State var slider1: Double = 20
    @State var slider2: Double = 20
    @State var slider2Edit: Bool = false
    @State var slider3: Double = 0.7
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("accentColor")
                    Slider(value: $slider1, in: -100...100, minimumValueLabel: Text("Min"), maximumValueLabel: Text("Max")) { Text("") }
                        .accentColor(.green)
                    Text("Value: \(slider1)")
                    Divider()
                }
                Group {
                    HeaderSectionView("onEditingChanged")
                    Slider(value: $slider2, in: 0...100, onEditingChanged: { (editing) in
                        slider2Edit = editing
                    })
                    if slider2Edit {
                        Text("Editando - Value: \(slider2)")
                    } else {
                        Text("Value: \(slider2)")
                    }
                    Divider()
                }
                Group {
                    HeaderSectionView("Custom Slider")
                    SliderCustom(value: $slider3)
                        .sliderThumbTintColor(.red)
                        .sliderMinimumTrackTintColor(.green)
                        .sliderMaximumTrackTintColor(.purple)
                    Text("Value: \(slider3)")
                    Divider()
                }
            }
            .padding()
        }
        .navigationBarTitle("Style", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct SliderStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SliderStyleView()
        }
    }
}
