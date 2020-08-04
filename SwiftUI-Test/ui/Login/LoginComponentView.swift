//
//  LoginComponentView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct LoginComponentView: View {
    @State var user: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("User", text: $user)
                .textFieldLogin()
            SecureField("Password", text: $password)
                .textFieldLogin()
            Button("Login") {
                print("Do Login")
            }.padding(.top, 30)
            .foregroundColor(Color.white)
            
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

extension View {
    public func textFieldLogin() -> some View {
        return self
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .background(Color.white)
            .frame(height: 40)
            .cornerRadius(5)
    }
}

struct LoginComponentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginComponentView()
            .background(Color.init(Constant.Color.blue))
    }
}
