//
//  FullView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 09/09/2020.
//

import SwiftUI

struct FullView: View {
    @State var showingDetail = false
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Main Screen")
            Button(action: {
                showingDetail.toggle()
            }) {
                Text("Show Detail")
            }.fullScreenCover(isPresented: $showingDetail) {
                FullDetailView(showingDetail: $showingDetail)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow.opacity(0.3))
        .navigationBarTitle("Full Screen", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct FullDetailView: View {
    @Binding var showingDetail: Bool
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Detail Screen")
            Button(action: {
                showingDetail.toggle()
            }) {
                Text("Back")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red.opacity(0.3))
    }
}

struct FullView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FullView()
        }
    }
}
