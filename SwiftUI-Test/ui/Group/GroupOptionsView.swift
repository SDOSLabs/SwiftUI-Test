//
//  GroupOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct GroupOptionsView: View {
    var body: some View {
        List {
            NavigationLink("Encapsulate", destination: GroupEncapsulateView())
            NavigationLink("Skip limit 10 items", destination: GroupSkipLimitView())
            NavigationLink("Apply styles", destination: GroupApplyStyleView())
        }
        .navigationBarTitle("Group Options", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GroupOptionsView()
        }
    }
}
