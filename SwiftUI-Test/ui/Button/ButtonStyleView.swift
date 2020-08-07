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
                    Button("Plain Button") {
                        textAlert = "Plain Button"
                        alertPresent.toggle()
                    }
                }
            }.padding()
        }
        .navigationBarTitle("Button Simple", displayMode: .inline)
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
        }
    }
}
