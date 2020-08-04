//
//  GroupApplyStyleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct GroupApplyStyleView: View {
    var body: some View {
        Group {
            Group {
                Text("Text 1")
                Text("Text 2")
                    .foregroundColor(.blue)
            }
            Divider()
            Group {
                Text("Text 3")
                Text("Text 4")
            }
            .font(.caption)
            .padding(.top, 5)
            .frame(maxWidth: .infinity)
            .background(Color.yellow.opacity(0.2))
            Divider()
            Group {
                Text("Text 5")
                    .font(.subheadline)
                Text("Text 6")
            }
        }
        .navigationBarTitle("Apply Style")
        .font(.title)
        .padding(.all, 20)
        .foregroundColor(.red)
        .background(Color.gray.opacity(0.3))
    }
}

struct GroupApplyStyleView_Previews: PreviewProvider {
    static var previews: some View {
        GroupApplyStyleView()
    }
}
