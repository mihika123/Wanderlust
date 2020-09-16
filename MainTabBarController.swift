//
//  MainBarTabController.swift
//  Wanderlust
//
//  Created by Mihikaa Goenka on 8/7/19.
//  Copyright © 2019 Mihikaa Goenka. All rights reserved.
//

import UIKit
//import MapKit

class MainTabBarController: UITabBarController  {
    
    var explore : UIButton!
    var maps: UIButton!
    var favorites: UIButton!

    //var home = CityViewController()
    var favorite  = FavoritesViewController()
    var map = MapViewController()

    let padding : CGFloat = 10

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = UIColor(red:0.82, green:0.42, blue:0.42, alpha:1.0)
        tabBar.shadowImage = UIImage()
//        home = UIViewController() as? HomeViewController
//        favorite = UIViewController() as? FavoritesViewController
//        map = UIViewController() as? MapViewController
//
        setUpTabBar()
    }

    func setUpTabBar() {

        //let homeController = createNavContoller(vc: home, selectedImage: #imageLiteral(resourceName: "home_s.png"), unselectedImage: #imageLiteral(resourceName: "home_us.png"))
        let mapController = createNavContoller(vc: map, selectedImage: #imageLiteral(resourceName: "map_s.png"), unselectedImage: #imageLiteral(resourceName: "map_us.png"))
        let favoriteController = createNavContoller(vc: favorite, selectedImage: #imageLiteral(resourceName: "heart_s.png"), unselectedImage: #imageLiteral(resourceName: "heart_us.png"))

        viewControllers = [mapController, favoriteController]

        guard let items = tabBar.items else { return }

        for item in items {
            item.imageInsets = UIEdgeInsets(top: 8, left: 0, bottom: -8, right: 0)
        }

    }
}

extension UITabBarController {
    func createNavContoller(vc : UIViewController, selectedImage: UIImage, unselectedImage: UIImage) -> UINavigationController {
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselectedImage
        navController.tabBarItem.selectedImage = selectedImage

        return navController
    }
}
