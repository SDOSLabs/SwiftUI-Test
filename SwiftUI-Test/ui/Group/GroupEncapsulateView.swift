//
//  GroupEncapsulateView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct GroupEncapsulateView: View {
    var body: some View {
        Group {
            Group {
                Text("Text 1")
                Text("Text 2")
            }
            Divider()
            Group {
                Text("Text 3")
                Text("Text 4")
            }
            Divider()
            Group {
                Text("Text 5")
                Text("Text 6")
            }
        }
        .navigationBarTitle("Encapsulate", displayMode: .inline)
    }
}

struct GroupEncapsulateView_Previews: PreviewProvider {
    static var previews: some View {
        GroupEncapsulateView()
    }
}
