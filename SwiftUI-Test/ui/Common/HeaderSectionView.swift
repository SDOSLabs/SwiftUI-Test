//
//  HeaderSectionView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 11/08/2020.
//

import SwiftUI

struct HeaderSectionView: View {
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        HStack {
            Text(text)
                .underline()
                .bold()
                .foregroundColor(.red)
            Spacer()
        }
    }
}

struct HeaderSectionView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSectionView("Title")
    }
}
