//
//  HomeView.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 03/08/2020.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                Group {
                    NavigationLink("Login", destination: LoginOptionsView())
                    NavigationLink("View", destination: ViewStyleView())
                    NavigationLink("Group", destination: GroupOptionsView())
                    NavigationLink("Text", destination: TextOptionsView())
                    NavigationLink("Button", destination: ButtonOptionsView())
                    NavigationLink("TextField", destination: TextFieldOptionsView())
                    NavigationLink("Image", destination: ImageOptionsView())
                    NavigationLink("Slider", destination: SliderOptionsView())
                    NavigationLink("Toogle", destination: ToggleOptionsView())
                    NavigationLink("NavigationView", destination: NavigationViewOptionsView())
                }
                Group {
                    NavigationLink("TabView", destination: TabViewOptionsView())
                    NavigationLink("ScrollView", destination: ScrollViewOptionsView())
                    NavigationLink("VStack", destination: VStackView())
                    NavigationLink("HStack", destination: HStackView())
                    NavigationLink("ZStack", destination: ZStackView())
                    NavigationLink("GeometryReader", destination: GeometryReaderOptionsView())
                }
            }
            .navigationBarTitle("Home", displayMode: .automatic)
            .background(NavigationConfigurator(backgroundColor: UIColor(red: 31/255, green: 155/255, blue: 222/255, alpha: 1), titleColor: .white))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
