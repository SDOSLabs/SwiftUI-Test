//
//  GeometryReaderOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 27/08/2020.
//

import SwiftUI

struct GeometryReaderOptionsView: View {
    @State var maxLabelWidth: CGFloat = 0
    
    var body: some View {
        List {
            NavigationLink("Align Form", destination: GeometryReaderAlignFormView())
        }
        .navigationBarTitle("GeometryReader Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct GeometryReaderOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GeometryReaderOptionsView()
        }
    }
}
