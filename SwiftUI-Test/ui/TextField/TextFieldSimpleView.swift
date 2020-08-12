//
//  TextFieldSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 12/08/2020.
//

import SwiftUI

struct TextFieldSimpleView: View {
    @State var inputText: String = ""
    @State var inputSecureText: String = ""
    
    var body: some View {
        Group {
            Group {
                HeaderSectionView("TextField")
                TextField("Placeholder", text: .constant(""))
                Divider()
                Group {
                    TextField("Write something", text: $inputText)
                        .frame(height: 44)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                if !inputText.isEmpty {
                        Text("User say: " + inputText)
                    }
                }
            }
        }
        .navigationBarTitle("TextField & SecureField Simple", displayMode: .inline)
        .padding()
    }
}

struct TextFieldSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextFieldSimpleView()
        }
    }
}
