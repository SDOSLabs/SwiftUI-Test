//
//  GeometryReaderEqualWidthView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 28/08/2020.
//

import SwiftUI

struct GeometryReaderEqualWidthView: View {
    var body: some View {
        Group {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    Text("Left")
                        .frame(width: geometry.size.width / 3, height: 60)
                        .background(Color.blue.opacity(0.3))
                    Text("Middle")
                        .frame(width: geometry.size.width / 3, height: 60)
                        .background(Color.orange.opacity(0.3))
                    Text("Right")
                        .frame(width: geometry.size.width / 3, height: 60)
                        .background(Color.red.opacity(0.3))
                }
            }
        }
        .navigationBarTitle("Equal Width", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct GeometryReaderEqualWidthView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GeometryReaderEqualWidthView()
        }
    }
}
