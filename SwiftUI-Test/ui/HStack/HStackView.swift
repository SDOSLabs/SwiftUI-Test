//
//  HStackView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 26/08/2020.
//

import SwiftUI

struct HStackView: View {
    let items = ["Sevilla", "Cádiz", "Huelva", "Córdoba", "Málaga", "Granada", "Jaén", "Álmería"]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center) {
                Text("Hello")
                Text("awesome world!")
                Divider()
                    .frame(height: 50)
                ForEach(items, id: \.self) {
                    Text($0)
                        .font(.body)
                        .padding(.all, 5)
                        .background(Color.black)
                        .foregroundColor(.white)
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.red.opacity(0.3))
        .navigationBarTitle("HStack", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct HStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HStackView()
        }
    }
}
