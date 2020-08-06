//
//  GroupSkipLimitView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct GroupSkipLimitView: View {
    var body: some View {
        Group {
            Group {
                Text("Text 1")
                Text("Text 2")
                Text("Text 3")
                Text("Text 4")
                Text("Text 5")
                Text("Text 6")
                Text("Text 7")
                Text("Text 8")
                Text("Text 9")
                Text("Text 10")
                //Text("Text 11") <-- With this the app no compile
            }
            Group {
                Text("Text 11")
                
            }
        }
        .navigationBarTitle("Skip limit")
    }
}

struct GroupSkipLimitView_Previews: PreviewProvider {
    static var previews: some View {
        GroupSkipLimitView()
    }
}
