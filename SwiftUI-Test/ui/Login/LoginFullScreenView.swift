//
//  LoginFullScreenView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct LoginFullScreenView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("sdos_logo")
            Spacer()
            LoginComponentView()
            Spacer()
        }
        .background(Color.init(UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1)))
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct LoginFullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginFullScreenView()
                .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
    }
}
