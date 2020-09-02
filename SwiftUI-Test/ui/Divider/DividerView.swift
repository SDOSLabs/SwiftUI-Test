//
//  DividerView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 02/09/2020.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        Group {
            VStack(spacing: 15) {
                HStack(spacing: 15) {
                    Text("Hello")
                    Divider()
                    Text("World")
                }
                .frame(height: 50)
                Divider()
                    .background(Color.orange)
                Text("Bye")
                Divider()
                    .frame(width: 100)
                    .background(Color.red)
                Text("World")
            }
        }
        .navigationBarTitle("Divider", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DividerView()
        }
    }
}
