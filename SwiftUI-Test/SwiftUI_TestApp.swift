//
//  SwiftUI_TestApp.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 03/08/2020.
//

import SwiftUI

@main
struct SwiftUI_TestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
