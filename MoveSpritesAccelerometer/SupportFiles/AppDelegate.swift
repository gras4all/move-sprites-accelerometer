//
//  AppDelegate.swift
//  MoveSpritesAccelerometer
//
//  Created by Андрей Груненков on 09.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = SceneViewController()
        window?.makeKeyAndVisible()
        return true
    }

}

