//
//  VStackView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 26/08/2020.
//

import SwiftUI

struct VStackView: View {
    let items = ["Sevilla", "Cádiz", "Huelva", "Córdoba", "Málaga", "Granada", "Jaén", "Álmería" ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text("Hello")
                Text("awesome world!")
                Divider()
                ForEach(items, id: \.self) {
                    Text($0)
                        .font(.title2)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding()
        }
        .background(Color.red.opacity(0.3))
        .navigationBarTitle("VStack", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VStackView()
        }
    }
}
