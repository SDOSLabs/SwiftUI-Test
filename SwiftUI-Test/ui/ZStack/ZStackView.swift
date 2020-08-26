//
//  ZStackView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 26/08/2020.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
            Image("sdos_office")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .blur(radius: 10)
                .clipped()
            Button(action: {
                //Do something
            }) {
                Text("Subscribe to see all the content")
                    .foregroundColor(.white)
                    .padding()
            }
            .background(Color.blue.opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .navigationBarTitle("ZStack", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ZStack_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ZStackView()
        }
    }
}
