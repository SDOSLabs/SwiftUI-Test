//
//  TabViewStyleOptionsView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 25/08/2020.
//

import SwiftUI

struct TabViewStyleOptionsView: View {
    var body: some View {
        List {
            NavigationLink("accentColor", destination: TabViewStyle1View())
            NavigationLink("tabItem", destination: TabViewStyle2View())
            NavigationLink("barTintColor", destination: TabViewStyle3View())
            NavigationLink("tabViewStyle", destination: TabViewStyle4View())
        }
        .navigationBarTitle("TabView Options", displayMode: .inline)
        .navigationColor(background: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), title: .white)
    }
}

struct TabViewStyle1View: View {
    var body: some View {
        VStack {
            HeaderSectionView("accentColor")
            TabView {
                Group {
                    Text("First Screen")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .background(Color.yellow.opacity(0.3))
                        .tabItem {
                            Image(systemName: "1.circle.fill")
                            Text("First")
                        }
                    Text("Second Screen")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .background(Color.red.opacity(0.3))
                        .tabItem {
                            Image(systemName: "2.circle.fill")
                            Text("Second")
                        }
                }
            }
            .accentColor(.orange)
            .border(Color.black, width: 1)
        }
        .padding()
    }
}

struct TabViewStyle2View: View {
    var body: some View {
        VStack {
            HeaderSectionView("tabItem")
        TabView {
            Group {
                Text("First Screen")
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color.yellow.opacity(0.3))
                    .tabItem {
                        Image(systemName: "cart.fill")
                        Text("First")
                    }
                Text("Second Screen")
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .background(Color.red.opacity(0.3))
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Second")
                    }
            }
        }
            .border(Color.black, width: 1)
        }
        .padding()
    }
}

struct TabViewStyle3View: View {
    
    private var lastBarTintColor: UIColor? = UITabBar.appearance().barTintColor
    
    var body: some View {
        VStack {
            HeaderSectionView("barTintColor")
            TabView {
                Group {
                    Text("First Screen")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .background(Color.yellow.opacity(0.3))
                        .tabItem {
                            Image(systemName: "1.circle.fill")
                            Text("First")
                        }
                    Text("Second Screen")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .background(Color.red.opacity(0.3))
                        .tabItem {
                            Image(systemName: "2.circle.fill")
                            Text("Second")
                        }
                }
            }
            .onAppear {
                UITabBar.appearance().barTintColor = UIColor(red: 180/255, green: 207/255, blue: 227/255, alpha: 1)
            }
            .onDisappear {
                UITabBar.appearance().barTintColor = lastBarTintColor
            }
            .border(Color.black, width: 1)
        }
        .padding()
    }
}

struct TabViewStyle4View: View {
    var body: some View {
        VStack {
            HeaderSectionView("tabViewStyle")
            TabView {
                Group {
                    Text("First Screen")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .background(Color.blue.opacity(0.3))
                        .tabItem {
                            Image(systemName: "cart.fill")
                            Text("First")
                        }
                    Text("Second Screen")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .background(Color.red.opacity(0.3))
                        .tabItem {
                            Image(systemName: "creditcard")
                            Text("Second")
                        }
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .border(Color.black, width: 1)
        }
        .padding()
    }
}

struct TabViewStyleOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TabViewStyleOptionsView()
        }
    }
}
