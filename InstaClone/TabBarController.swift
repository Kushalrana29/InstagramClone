//
//  TabBar.swift
//  TabBar
//
//  Created by Rana on 26/04/23.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        tabBar.backgroundColor = UIColor(displayP3Red: 217, green: 211, blue: 163, alpha: 1)
        setupVCs()
    }
    
    
    func setupVCs() {
            viewControllers = [
                createNavController(for: FeedViewController(),
                                    title: NSLocalizedString("Feed", comment: ""),
                                    image: UIImage(systemName: "house")!),
                
                createNavController(for: SearchViewController(),
                                    title: NSLocalizedString("Search", comment: ""),
                                    image: UIImage(systemName: "magnifyingglass")!),
                
                createNavController(for: ImageSelectorViewController(),
                                    title: NSLocalizedString("Image", comment: ""),
                                    image: UIImage(systemName: "square")!),
                
                createNavController(for: NotificationViewController(),
                                    title: NSLocalizedString("Notification", comment: ""),
                                    image: UIImage(systemName: "heart")!),
                
                createNavController(for: ProfileViewController(),
                                    title: NSLocalizedString("Profile", comment: ""),
                                    image: UIImage(systemName: "person")!)
            ]
        }
    
    
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                      title: String,
                                                      image: UIImage) -> UIViewController {
            let navController = UINavigationController(rootViewController: rootViewController)
            navController.tabBarItem.title = title
            navController.tabBarItem.image = image
            //navController.navigationBar.prefersLargeTitles = true
            rootViewController.navigationItem.title = title
        
            return navController
    }
}

