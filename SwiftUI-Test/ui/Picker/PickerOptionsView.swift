//
//  PickerOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 02/09/2020.
//

import SwiftUI

struct PickerOptionsView: View {
    
    var body: some View {
        List {
            NavigationLink("Simple", destination: PickerSimpleView())
            NavigationLink("Style", destination: PickerStyleView())
        }
        .navigationBarTitle("Picker Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct PickerOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PickerOptionsView()
        }
    }
}
