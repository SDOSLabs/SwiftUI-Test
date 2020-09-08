//
//  ActionSheetView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 08/09/2020.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var showActionSheet = false
    @State private var buttonPressed: String?
    
    var body: some View {
        VStack(spacing: 15) {
            Button("Show ActionSheet") {
                showActionSheet.toggle()
            }
            if let buttonPressed = buttonPressed {
                Text("You pressed \"\(buttonPressed)\" button")
            }
            
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("A question"), message: Text("Are you sure about that?"), buttons: [
                .default(Text("Yes")) { buttonPressed = "Yes" },
                .default(Text("No")) { buttonPressed = "No" },
                .default(Text("Maybe")) { buttonPressed = "Maybe" },
                .destructive(Text("Delete")) { buttonPressed = "Delete" },
                .cancel()  { buttonPressed = "Cancel" }
            ])
        }
        .navigationBarTitle("ActionSheet", displayMode: .automatic)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ActionSheetView()
        }
    }
}
