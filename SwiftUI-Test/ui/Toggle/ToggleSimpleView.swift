//
//  ToggleSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 19/08/2020.
//

import SwiftUI

struct ToggleSimpleView: View {
    @State var toggle1Value: Bool = true
    @State var toggle2Value: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    HeaderSectionView("init")
                    Toggle("Option 1", isOn: $toggle1Value)
                    Toggle(isOn: $toggle2Value) {
                        VStack {
                            Text("This is a")
                            Text("switch")
                        }
                    }
                    Divider()
                }
            }
            .padding()
        }
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ToggleSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ToggleSimpleView()
        }
    }
}
