//
//  ButtonStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 06/08/2020.
//

import SwiftUI

struct ButtonStyleView: View {
    @State var alertPresent = false
    @State private var textAlert = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                Group {
                    Button("Borderless Button") {
                        textAlert = "Borderless Button"
                        alertPresent.toggle()
                    }.buttonStyle(BorderlessButtonStyle())
                    Button("Default Button") {
                        textAlert = "Default Button"
                        alertPresent.toggle()
                    }.buttonStyle(DefaultButtonStyle())
                    Button("Plain Button") {
                        textAlert = "Plain Button"
                        alertPresent.toggle()
                    }.buttonStyle(PlainButtonStyle())
                    Divider()
                }
                Group {
                    Button("Hover Effect  Button (try on iPad)") {
                        textAlert = "Hover Effect  Button (try on iPad)"
                        alertPresent.toggle()
                    }.hoverEffect(.lift)
                    
                }
            }.padding()
        }
        .navigationBarTitle("Button Simple", displayMode: .inline)
        .background(NavigationConfigurator(backgroundColor: .green, titleColor: .blue))
        .alert(isPresented: $alertPresent) {
            Alert(title: Text("Pressed " + textAlert))
        }
        
    }
}

struct ButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ButtonStyleView()
                .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
