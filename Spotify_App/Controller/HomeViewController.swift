//
//  HomeViewController.swift
//  Spotify_App
//
//  Created by Anıl Akkaya on 12.10.2018.
//  Copyright © 2018 Anıl Akkaya. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: ViewController<HomeView> {
    //override var tabBarController: UITabBarController?
    var customTabBarController: MainTabBarController? = nil
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let tabBarCntrllr = UIApplication.shared.keyWindow?.rootViewController as? MainTabBarController else {
            print("HomeViewController's root view controller is not MainTabBarController...")
        
            return
        }
        
        customTabBarController = tabBarCntrllr
        customTabBarController?.deneme()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.backgroundColor = .red
    }
    
}