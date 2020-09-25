//
//  GeometryReaderCoordinatesView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 28/08/2020.
//

import SwiftUI

struct GeometryReaderCoordinatesView: View {
    var body: some View {
        Group {
            GeometryReader{ geometry in
                VStack (spacing: 10) {
                    Text("Coordinates")
                    Divider()
                    VStack(spacing: 5) {
                        Text("Global minX: \(geometry.frame(in: .global).minX)")
                        Text("Global maxX: \(geometry.frame(in: .global).maxX)")
                    }
                    .background(Color.yellow.opacity(0.5))
                    Divider()
                        .background(Rectangle().fill(Color.yellow.opacity(0.3)))
                        .background(Color.yellow.opacity(0.3))
                    VStack(spacing: 5) {
                        Text("Local minX: \(geometry.frame(in: .local).minX)")
                        Text("Local maxX: \(geometry.frame(in: .local).maxX)")
                    }
                    .background(Color.orange.opacity(0.5))
                }
            }
            .frame(width: 200, height: 200)
            .background(Color.blue.opacity(0.2))
        }
        .navigationBarTitle("Coordinates", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct GeometryReaderCoordinatesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GeometryReaderCoordinatesView()
        }
    }
}
