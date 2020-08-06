//
//  LoginEmbedView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct LoginEmbedView: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("sdos_office")
                    .resizable()
                    .frame(height: 200)
                    .scaledToFit()
                Text("La firma tecnológica sevillana SDOS instalará su nueva factoría de software en El Puerto")
                    .font(.title2)
                    .padding([.leading, .trailing], 10)
                Text("La consultora tecnológica SDOS ha anunciado que abrirá en El Puerto, en el polígono Las Salinas, una factoría de software. Y espera que esté operativa en el segundo semestre del año. Se trataría de un centro tecnológico...")
                    .font(.subheadline)
                    .padding([.leading, .trailing, .top], 10)
                Divider()
                Text("Para leer más identifícate")
                    .padding([.all], 10)
                LoginComponentView()
                    .padding([.leading, .trailing, .top], 10)
                    .background(Color.init(UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1)))
                Spacer()
                
            }
        }
        .background(Color.gray.opacity(0.1))
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct LoginEmbedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LoginEmbedView()
                .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
    }
}
