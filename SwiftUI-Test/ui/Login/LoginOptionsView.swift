//
//  LoginOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct LoginOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Full Screen", destination: LoginFullScreenView())
            NavigationLink("Embed", destination: LoginEmbedView())
        }
        .navigationBarTitle("Login Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct LoginOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginOptionsView()
        }
    }
}
