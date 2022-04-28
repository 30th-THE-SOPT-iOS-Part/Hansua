//
//  TabBarController.swift
//  SUA-Instagram
//
//  Created by Sua Han on 2022/04/10.
//

import UIKit

class TabBarController: UITabBarController {
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarViewControllers()
        setUI()
        setDelegate()
    }
    

    //MARK: - Helpers
    func setUI() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .black
    }
    
    func setDelegate() {
        self.delegate = self
    }
    
    func setTabBarViewControllers() {
        
        let homeSB = UIStoryboard(name: Const.Storyboard.HomeTab, bundle: nil)
        let searchSB = UIStoryboard(name: Const.Storyboard.SearchTab, bundle: nil)
        let reelsSB = UIStoryboard(name: Const.Storyboard.ReelsTab, bundle: nil)
        let shopSB = UIStoryboard(name: Const.Storyboard.ShopTab, bundle: nil)
        let profileSB = UIStoryboard(name: Const.Storyboard.ProfileTab, bundle: nil)

        guard let homeVC = homeSB.instantiateViewController(withIdentifier: Const.ViewController.HomeTabController) as? HomeTabController,
              let searchVC = searchSB.instantiateViewController(withIdentifier: Const.ViewController.SearchTabController) as? SearchTabController,
              let reelsVC = reelsSB.instantiateViewController(withIdentifier: Const.ViewController.ReelsTabController) as? ReelsTabController,
              let shopVC = shopSB.instantiateViewController(withIdentifier: Const.ViewController.ShopTabController) as? ShopTabController,
              let proifleVC = profileSB.instantiateViewController(withIdentifier: Const.ViewController.ProfileTabController) as? ProfileTabController
        else { return }
        
        let homeNVC = templateNavigationController(unselectedImage: Const.Image.home,
                                                   selectedImage: Const.Image.homeSelected,
                                                   rootViewController: homeVC)
        
        let searchNVC = templateNavigationController(unselectedImage: Const.Image.search,
                                                     selectedImage: Const.Image.searchSelected,
                                                     rootViewController: searchVC)
        
        let reelsNVC = templateNavigationController(unselectedImage: Const.Image.reels,
                                                    selectedImage: Const.Image.reelsSelected,
                                                    rootViewController: reelsVC)
        
        let shopNVC = templateNavigationController(unselectedImage: Const.Image.shop,
                                                   selectedImage: Const.Image.shopSelected,
                                                   rootViewController: shopVC)
        
        let profileNVC = templateNavigationController(unselectedImage: Const.Image.profile,
                                                      selectedImage: Const.Image.profileSelected,
                                                      rootViewController: proifleVC)
        
        viewControllers = [homeNVC, searchNVC, reelsNVC, shopNVC, profileNVC]
    }

    func templateNavigationController(unselectedImage: UIImage?, selectedImage: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        nav.navigationItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: self, action: nil)
        nav.navigationItem.backBarButtonItem?.tintColor = .black
        return nav
    }
    
    
    func changeTabBarColor(toBlack: Bool){
        if toBlack {
            tabBar.backgroundColor = .black
            tabBar.tintColor = .white
            tabBar.unselectedItemTintColor = .white
        } else {
            tabBar.backgroundColor = .white
            tabBar.tintColor = .black
            tabBar.unselectedItemTintColor = .black
        }
    }
}

//MARK: - UITabBarControllerDelegate
extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        let index = viewControllers?.firstIndex(of: viewController)
        
        (index == 2) ? changeTabBarColor(toBlack: true) : changeTabBarColor(toBlack: false)
        
        return true
    }
}
