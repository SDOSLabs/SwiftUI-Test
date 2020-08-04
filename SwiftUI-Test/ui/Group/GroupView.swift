//
//  GroupView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        List {
            NavigationLink("Encapsulate", destination: GroupEncapsulateView())
            NavigationLink("Skip limit 10 items", destination: GroupSkipLimitView())
            NavigationLink("Apply styles", destination: GroupApplyStyleView())
        }
        .navigationBarTitle("Group", displayMode: .inline)
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
