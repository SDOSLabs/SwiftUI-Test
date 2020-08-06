//
//  NavigationConfigurator.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
    let backgroundColor: UIColor
    let titleColor: UIColor

    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> UIViewController {
        UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<Self>) {
        if let nc = uiViewController.navigationController {
            nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
            let navBarAppearance = UINavigationBarAppearance()
            navBarAppearance.configureWithOpaqueBackground()
            navBarAppearance.titleTextAttributes = [.foregroundColor: titleColor]
            navBarAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor]
            navBarAppearance.backgroundColor = backgroundColor
            
            nc.navigationBar.standardAppearance = navBarAppearance
            nc.navigationBar.scrollEdgeAppearance = navBarAppearance
            nc.navigationBar.tintColor = titleColor
        }
    }

}
