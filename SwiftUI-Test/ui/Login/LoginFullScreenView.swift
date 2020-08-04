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
        }.background(Color.init(Constant.Color.blue))
    }
}

struct LoginFullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFullScreenView()
    }
}
