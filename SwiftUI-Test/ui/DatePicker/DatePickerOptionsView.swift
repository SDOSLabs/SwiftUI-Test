//
//  DatePickerOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 03/09/2020.
//

import SwiftUI

struct DatePickerOptionsView: View {
    
    var body: some View {
        List {
            NavigationLink("Simple", destination: DatePickerSimpleView())
            NavigationLink("Style", destination: DatePickerStyleView())
        }
        .navigationBarTitle("DatePicker Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct DatePickerOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DatePickerOptionsView()
        }
    }
}
