//
//  ShapeOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/09/2020.
//

import SwiftUI

struct ShapeOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Capsule", destination: ShapeCapsuleView())
            NavigationLink("Circle", destination: ShapeCircleView())
            NavigationLink("Ellipse", destination: ShapeEllipseView())
            NavigationLink("Rectangle", destination: ShapeRectangleView())
            NavigationLink("RoundedRectangle", destination: ShapeRoundedRectangleView())
        }
        .navigationBarTitle("Shape Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ShapeOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ShapeOptionsView()
        }
    }
}
