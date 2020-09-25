//
//  PresentOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 09/09/2020.
//

import SwiftUI

struct PresentOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Sheet", destination: SheetView())
            NavigationLink("Full", destination: FullView())
        }
        .navigationBarTitle("Present Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct PresentOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PresentOptionsView()
        }
    }
}
