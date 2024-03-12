//
//  MALTabBarViewController.swift
//  MALApp
//
//  Created by Taro Altrichter on 12.03.24.
//

import UIKit

class MALTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [createAnimeListNavigationController(), createFavoritesListViewController()]
        // Do any additional setup after loading the view.
    }
    
    func createAnimeListNavigationController() -> UINavigationController {
        let animeListVC = AnimeListViewController()
        animeListVC.title = "Anime List"
        animeListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        return UINavigationController(rootViewController: animeListVC)
    }
    
    func createFavoritesListViewController() -> UINavigationController {
        let favoritesListVC = FavoritesListViewController()
        favoritesListVC.title = "Favorites"
        favoritesListVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
