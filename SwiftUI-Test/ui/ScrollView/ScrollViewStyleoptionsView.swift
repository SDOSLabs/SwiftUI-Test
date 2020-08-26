//
//  ScrollViewStyleoptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 25/08/2020.
//

import SwiftUI
import Combine

struct ScrollViewStyleoptionsView: View {
        @State private var index: String = ""
        @State private var selectedIndex: Int?
        @State private var doScroll: Bool = false
        
        var body: some View {
            VStack {
                HeaderSectionView("ScrollViewReader")
                HStack(spacing: 15) {
                    TextField("Index between 0-99", text: $index)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.numberPad)
                        .onReceive(Just(index), perform: { value in
                            let filtered = "\(value)".filter { "0123456789".contains($0) }
                            if let filtered = Int(filtered) {
                                self.index = "\(filtered)"
                            } else {
                                self.index = ""
                            }
                        })
                    Button("Scroll!") {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        doScroll = true
                    }
                }
                ScrollView {
                    ScrollViewReader { proxy in
                        VStack {
                            ForEach(0..<100) {
                                if let selectedIndex = selectedIndex, selectedIndex == $0 {
                                    Text("Index: \($0)")
                                        .padding()
                                        .background(Color.red.opacity(0.3))
                                        .tag($0)
                                } else {
                                    Text("Index: \($0)")
                                        .padding()
                                        .tag($0)
                                }
                            }
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .onReceive(Just(doScroll)) { value in
                            if let index = Int(index), value {
                                selectedIndex = index
                                withAnimation {
                                    proxy.scrollTo(index, anchor: .center)
                                }
                            }
                            
                            doScroll = false
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
            }
        .padding()
        .navigationBarTitle("Vertical", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct ScrollViewStyleoptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrollViewStyleoptionsView()
        }
    }
}
