//
//  TabBarController.swift
//  ST-HW12- Саралаев Ержан
//
//  Created by Ertannic Saralay on 19.03.2024.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    func setupTabBarController() {
        tabBar.tintColor = .systemBlue
        tabBar.backgroundColor = .systemGray3
    }
    
    func setupTabBarViewControllers() {
        
        // MediaLibary TABBAR
        let mediaLibrary = MediaLibaryTabBarViewController()
        let mediaLibraryIcon = UITabBarItem(title: "mediaLibraryIcon",
                                            image: UIImage(systemName: "photo.fill.on.rectangle.fill"),
                                            selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill"))
        mediaLibrary.tabBarItem = mediaLibraryIcon
        
        // ForYou TABBAR
        let forYou = ForYouTabBarViewController()
        let forYouIcon = UITabBarItem(title: "forYouIcon",
                                      image: UIImage(systemName: "heart.text.square.fill"),
                                      selectedImage: UIImage(systemName: "heart.text.square.fill"))
        forYou.tabBarItem = forYouIcon
        
        // Albums TABBAR
        let albums = AlbumsTabBarViewController()
        let albumsIcon = UITabBarItem(title: "albumsIcon",
                                      image: UIImage(systemName: "person.crop.rectangle.stack.fill"),
                                      selectedImage: UIImage(systemName: "person.crop.rectangle.stack.fill"))
        albums.tabBarItem = albumsIcon
        
        // Search TABBAR
        let search = SearchTabBarViewController()
        let searchIcon = UITabBarItem(title: "search", 
                                      image: UIImage(systemName: "magnifyingglass"),
                                      selectedImage: UIImage(systemName: "magnifyingglass"))
        search.tabBarItem = searchIcon
        
        let controllers = [albums, forYou, mediaLibrary, search]
        self.setViewControllers(controllers, animated: true)
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Будет выбран контроллер - \(viewController.title ?? "")")
        return true
    }
}
