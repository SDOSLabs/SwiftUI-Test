//
//  GeometryReaderAlignFormView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 27/08/2020.
//

import SwiftUI

struct GeometryReaderAlignFormView: View {
    @State var maxLabelWidth: CGFloat = 0
    
    var body: some View {
        Form {
            HStack {
                Text("Name")
                    .frame(width: maxLabelWidth, alignment: .leading)
                    .background(WidthBackground())
                TextField("", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("Surname")
                    .frame(width: maxLabelWidth, alignment: .leading)
                    .background(WidthBackground())
                TextField("", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("Address")
                    .frame(width: maxLabelWidth, alignment: .leading)
                    .background(WidthBackground())
                TextField("", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("DNI")
                    .frame(width: maxLabelWidth, alignment: .leading)
                    .background(WidthBackground())
                TextField("", text: .constant(""))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
        .onPreferenceChange(WidthPreferenceKey.self) {
            if $0 > self.maxLabelWidth {
                self.maxLabelWidth = $0
            }
        }
        .navigationBarTitle("Align Form", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
    
}

struct WidthPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) { }
}

struct WidthBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Color.clear
                .preference(key: WidthPreferenceKey.self, value: geometry.size.width)
        }
        .scaledToFill()
    }
}

struct GeometryReaderAlignFormView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GeometryReaderAlignFormView()
        }
    }
}
