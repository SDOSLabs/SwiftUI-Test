//
//  NavigationViewStyleOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 24/08/2020.
//

import SwiftUI

struct NavigationViewStyleOptionsView: View {
    var body: some View {
        List {
            NavigationLink("navigationBarTitle", destination: NavigationViewStyle1View())
            NavigationLink("navigationBarTitleDisplayMode", destination: NavigationViewStyle2View())
            NavigationLink("navigationViewStyle", destination: NavigationViewStyle3View())
            NavigationLink("navigationBarBackButtonHidden", destination: NavigationViewStyle4View())
            NavigationLink("navigationBarItems", destination: NavigationViewStyle6View())
            NavigationLink("toolbar", destination: NavigationViewStyle7View())
        }
        .navigationBarTitle("NavigationView Style Options", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct NavigationViewStyle1View: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 15) {
                    Text("Hello, World!")
                    Text("navigationBarTitle")
                }
                .navigationBarTitle("Custom title and displayMode", displayMode: .large)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
                
            }
            .border(Color.black, width: 1)
        }
        .navigationBarTitle("Style 1", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewStyle2View: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 15) {
                    Text("Hello, World!")
                    Text("navigationBarTitleDisplayMode")
                }
                .navigationBarTitle("Custom displayMode")
                .navigationBarTitleDisplayMode(.inline)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
                
            }
            .border(Color.black, width: 1)
        }
        .navigationBarTitle("Style 2", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewStyle3View: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 15) {
                    Text("Hello, World!")
                    Text("navigationViewStyle")
                }
                .navigationViewStyle(DoubleColumnNavigationViewStyle())
                .navigationBarTitle("Custom navigationViewStyle")
                .navigationBarTitleDisplayMode(.inline)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
                
            }
            .border(Color.black, width: 1)
        }
        .navigationBarTitle("Style 3", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewStyle4View: View {
    @State var showDetail: Bool = false
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 15) {
                    Text("Hello, World!")
                    Text("navigationBarBackButtonHidden")
                    NavigationLink("Show Detail", destination: NavigationViewStyle5View(showDetail: $showDetail), isActive: $showDetail)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .navigationBarTitle("First", displayMode: .inline)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
                
            }
            .border(Color.black, width: 1)
        }
        .navigationBarTitle("Style 4", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewStyle5View: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        VStack {
                VStack(spacing: 15) {
                    Text("Hello, World!")
                    Text("navigationBarBackButtonHidden")
                    Button("Back") {
                        showDetail.toggle()
                    }
                }
                .navigationBarTitle("Second", displayMode: .inline)
                .navigationBarBackButtonHidden(true)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
        }
    }
}

struct NavigationViewStyle6View: View {
    @State var showDetail: Bool = false
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 15) {
                    Text("Hello, World!")
                    Text("navigationBarItems")
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .navigationBarTitle("First", displayMode: .inline)
                
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
            }
            .border(Color.black, width: 1)
        }
        .navigationBarTitle("Style 6", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewStyle7View: View {
    @State var showDetail: Bool = false
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 15) {
                    Text("Hello, World!")
                    Text("toolbar")
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .navigationBarTitle("First", displayMode: .inline)
                .toolbar(items: {
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
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button("Right 1") {
                                //Do something
                            }
                            Button("Right 2") {
                                //Do something
                            }
                        }
                    }
                })
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color.yellow.opacity(0.3))
                
            }
            .border(Color.black, width: 1)
        }
        .navigationBarTitle("Style 7", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
        .padding()
    }
}

struct NavigationViewStyleOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationViewStyleOptionsView()
        }
    }
}
