//
//  NavigationViewSimpleView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 21/08/2020.
//

import SwiftUI

struct NavigationViewSimpleView: View {
    var body: some View {
        VStack {
            HeaderSectionView("Init")
            NavigationViewSimpleInitView()
        }
        .navigationBarTitle("Simple", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewSimpleInitView: View {
    var body: some View {
        NavigationView {
            Group {
                Text("Hello, World!")
            }
            .navigationBarTitle("Simple", displayMode: .inline)
            .navigationBarItems(trailing:
                                    HStack {
                                        Button("Button 1") {
                                            //Do something
                                        }
                                        Button("Button 2") {
                                            //Do something
                                        }
                                    })
            .toolbar(content: {
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        Button("First") {
                            //Do something
                        }
                        Button("Second") {
                            //Do something
                        }
                    }
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.yellow.opacity(0.3))
            
        }
    }
}

struct NavigationViewSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationViewSimpleView()
        }
    }
}
