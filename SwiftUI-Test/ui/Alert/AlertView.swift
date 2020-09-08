//
//  AlertView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 08/09/2020.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert = false
    @State private var buttonPressed: String?
    
    var body: some View {
        VStack(spacing: 15) {
            Button("Show Alert") {
                showAlert.toggle()
            }
            if let buttonPressed = buttonPressed {
                Text("You pressed \"\(buttonPressed)\" button")
            }
            
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("A question"), message: Text("Are you sure about that?"), primaryButton: .default(Text("Yes")) {
                buttonPressed = "Yes"
            }, secondaryButton: .cancel(Text("No")) {
                buttonPressed = "No"
            })
        }
        .navigationBarTitle("Alert", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AlertView()
        }
    }
}
