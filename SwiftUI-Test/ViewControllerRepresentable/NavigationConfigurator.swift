//
//  NavigationConfigurator.swift
//  SwiftUI-Test
//
//  Created by Rafael Fernandez Alvarez on 04/08/2020.
//

import SwiftUI

extension View {
    func navigationColor(background: UIColor, title: UIColor) -> some View {
        return self
            .background(NavigationConfigurator(backgroundColor: background, titleColor: title))
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    let backgroundColor: UIColor
    let titleColor: UIColor
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> UIViewController {
        context.coordinator
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<Self>) {
        //        DispatchQueue.main.async {
        //            if let sv = uiViewController.splitViewController {
        //                sv.viewControllers.forEach {
        //                    if let nc = $0 as? UINavigationController {
        //                        applyStyle(nc)
        //                    }
        //                }
        //            }
        //
        //            if let nc = uiViewController.navigationController {
        //                applyStyle(nc)
        //            }
        //        }
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(backgroundColor: backgroundColor, titleColor: titleColor)
    }
    
    class Coordinator: UIViewController {
        let backgroundColor: UIColor
        let titleColor: UIColor
        
        init(backgroundColor: UIColor, titleColor: UIColor) {
            self.backgroundColor = backgroundColor
            self.titleColor = titleColor
            super.init(nibName: nil, bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            var items = [UINavigationController]()
            
//            if let sv = self.splitViewController {
//                sv.viewControllers.forEach {
//                    if let nc = $0 as? UINavigationController, !items.contains(nc) {
//                        items.append(nc)
//                    }
//                }
//            }
            
            if let nc = self.navigationController, !items.contains(nc) {
                items.append(nc)
            }
            
            applyStyle(items)
        }
        
        private func applyStyle(_ items: [UINavigationController]) {
            items.forEach{ nc in
                let last = nc.navigationBar.barTintColor
                nc.navigationBar.barTintColor = .red
                nc.navigationBar.barTintColor = .white
                nc.navigationBar.barTintColor = last
                
                let navBarAppearance = UINavigationBarAppearance()
                navBarAppearance.configureWithOpaqueBackground()
                navBarAppearance.titleTextAttributes = [.foregroundColor: self.titleColor]
                navBarAppearance.largeTitleTextAttributes = [.foregroundColor: self.titleColor]
                navBarAppearance.backgroundColor = self.backgroundColor
                
                nc.navigationBar.standardAppearance = navBarAppearance
                nc.navigationBar.scrollEdgeAppearance = navBarAppearance
                nc.navigationBar.compactAppearance = navBarAppearance
            }
            
            DispatchQueue.main.async {
                items.forEach{ nc in
                    nc.navigationBar.tintColor = self.titleColor
                }
            }
            view.setNeedsLayout()
            view.layoutIfNeeded()
            
        }
    }
}
