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
                    HeaderSectionView("buttonStyle")
                    Button("Button Borderless") {
                        textAlert = "Button Borderless"
                        alertPresent.toggle()
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    Button("Button Default") {
                        textAlert = "Button Default"
                        alertPresent.toggle()
                    }
                    .buttonStyle(DefaultButtonStyle())
                    Button("Button Plain") {
                        textAlert = "Button Plain"
                        alertPresent.toggle()
                    }
                    .buttonStyle(PlainButtonStyle())
                    Divider()
                }
                Group {
                    HeaderSectionView("hoverEffect")
                    Button("Button Hover Effect (try on iPad with pointer)") {
                        textAlert = "Hover Effect  Button (try on iPad with pointer)"
                        alertPresent.toggle()
                    }
                    .hoverEffect(.lift)
                    Divider()
                }
                Group {
                    HeaderSectionView("background")
                    Button("Button with background") {
                        textAlert = "Button with background"
                        alertPresent.toggle()
                    }
                    .background(Color.yellow)
                    Button("Button with background (frame set)") {
                        textAlert = "Button with background (frame set)"
                        alertPresent.toggle()
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow)
                    Divider()
                }
                Group {
                    HeaderSectionView("foregroundColor")
                    Button("Foreground Color") {
                        textAlert = "Foreground Color"
                        alertPresent.toggle()
                    }
                    .foregroundColor(.purple)
                    Divider()
                }
                Group {
                    HeaderSectionView("SelectableButtonStyle")
                    Button(action: {
                        textAlert = "Hello\nButton!"
                        alertPresent.toggle()
                    }, label: {
                        VStack {
                            Text("Hello")
                            Divider()
                                .background(Color.red)
                                .frame(width: 100, height: 1)
                            Text("Button!")
                        }
                    }).buttonStyle(SelectableButtonStyle({
                        return $0.label
                            .background(Color.yellow)
                            .clipShape(RoundedRectangle(cornerRadius: $0.isPressed ? 16.0 : 0.0))
                            .overlay(RoundedRectangle(cornerRadius: $0.isPressed ? 16.0 : 0.0).stroke(lineWidth: $0.isPressed ? 2.0 : 0.0).foregroundColor(Color.pink))
                                                        .animation(.linear)
                    }))
                    Button("Customize on pressed") {
                        textAlert = "Customize on pressed"
                        alertPresent.toggle()
                    }
                    .padding()
                    .background(Color.blue)
                    .buttonStyle(SelectableButtonStyle({
                        return $0.label
                            .background(Color.yellow)
                            .clipShape(RoundedRectangle(cornerRadius: $0.isPressed ? 16.0 : 0.0))
                            .overlay(RoundedRectangle(cornerRadius: $0.isPressed ? 16.0 : 0.0).stroke(lineWidth: $0.isPressed ? 2.0 : 0.0).foregroundColor(Color.pink))
                                                        .animation(.linear)
                    }))
                    Divider()
                }
                
            }.padding()
        }
        .navigationBarTitle("Button Style", displayMode: .inline)
        .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
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
