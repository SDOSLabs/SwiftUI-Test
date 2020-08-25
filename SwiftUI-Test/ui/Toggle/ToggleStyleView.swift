//
//  ToggleStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 19/08/2020.
//

import SwiftUI

struct ContentView: View {
    @State var value: Bool = true
    
    var body: some View {
        Group {
            Toggle("Option 3", isOn: $value)
                .toggleStyle(BorderToggleStyle(tint: .blue))
        }
    }
}

struct ToggleStyleView: View {
    @State var toggle1Value: Bool = true
    @State var toggle2Value: Bool = true
    @State var toggle3Value: Bool = true
    @State var toggle4Value: Bool = false
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("toggleStyle")
                    Toggle("Option 1", isOn: $toggle1Value)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Divider()
                }
                Group {
                    HeaderSectionView("labelsHidden")
                    Toggle("Option 2", isOn: $toggle2Value)
                        .labelsHidden()
                    Divider()
                }
                Group {
                    HeaderSectionView("BorderToggleStyle")
                    Toggle("Option 3", isOn: $toggle3Value)
                        .toggleStyle(BorderToggleStyle(tint: .blue))
                    Divider()
                }
                Group {
                    HeaderSectionView("CheckToggleStyle")
                    Toggle("Option 4", isOn: $toggle4Value)
                        .toggleStyle(CheckToggleStyle())
                    Divider()
                }
            }
            .padding()
        }
        .navigationBarTitle("Style", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ToggleStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ToggleStyleView()
        }
    }
}
