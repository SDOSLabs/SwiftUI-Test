//
//  SpacerView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 02/09/2020.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {

            VStack {
                Image("sdos_office")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Spacer()
                    .frame(height: 50)
                Text("La firma tecnológica sevillana SDOS instalará su nueva factoría de software en El Puerto")
                    .font(.title2)
                    .padding([.leading, .trailing], 10)
                Text("La consultora tecnológica SDOS ha anunciado que abrirá en El Puerto, en el polígono Las Salinas, una factoría de software. Y espera que esté operativa en el segundo semestre del año. Se trataría de un centro tecnológico...")
                    .font(.subheadline)
                    .padding([.leading, .trailing, .top], 10)
                Spacer()
                Text("Footer")
                Spacer()
                
            }
        .navigationBarTitle("Spacer", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SpacerView()
        }
    }
}
