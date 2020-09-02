//
//  EmptyViewView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 02/09/2020.
//

import SwiftUI

struct EmptyViewView: View {
    @State private var navigate = false
    
    var body: some View {
        VStack(spacing: 15) {
            Group {
                HeaderSectionView("Toggle")
                Toggle(isOn: .constant(true)) {
                    EmptyView()
                }
                Divider()
            }
            Group {
                HeaderSectionView("NavigationLink")
                NavigationLink(destination: Text("New Screen"), isActive: $navigate) {
                    EmptyView()
                }
                Button("Navigate") {
                    navigate = true
                }
                Divider()
            }
        }
        .padding()
        .navigationBarTitle("EmptyView", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct EmptyViewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EmptyViewView()
        }
    }
}
