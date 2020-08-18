//
//  ImageURLView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 17/08/2020.
//

import SwiftUI

struct ImageURLView: View {
    var body: some View {
        List {
            ForEach((100...200), id: \.self) {
                ImageURLCellView(index: $0)
            }
        }
        .navigationBarTitle("Image Options", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ImageURLCellView: View {
    var index: Int
    
    var body: some View {
        HStack {
            Spacer()
            ImageAsync("https://picsum.photos/id/\(index)/300") {
                $0.resizable()
            }
            .placeholder {
                placeholder
            }
            .aspectRatio(contentMode: .fit)
            .frame(height: 200, alignment: .center)
            Spacer()
        }
    }
    
    var placeholder: some View {
        Group {
            if index % 3 == 0 {
                Text("...")
            } else if index % 3 == 1 {
                Text("Loading")
            } else {
                Text("")
            }
        }
    }
}

struct ImageURLView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ImageURLView()
        }
    }
}
