//
//  NavigationViewPushView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 21/08/2020.
//

import SwiftUI

struct NavigationViewPushView: View {
    var body: some View {
        VStack {
            HeaderSectionView("NavigationLink")
            NavigationViewPushFirstView()
        }
        .navigationBarTitle("Push", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewPushFirstView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("First View")
                NavigationLink("Go to second view", destination: NavigationViewPushSecondView())
            }
            .navigationBarTitle("First", displayMode: .inline)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.yellow.opacity(0.3))
            
        }
    }
}

struct NavigationViewPushSecondView: View {
    var body: some View {
        Group {
            Text("Second View")
        }
        .navigationBarTitle("Second", displayMode: .inline)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.green.opacity(0.3))
    }
}



struct NavigationViewPushView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationViewPushView()
        }
    }
}
