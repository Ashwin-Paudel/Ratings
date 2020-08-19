//
//  AppDelegate.swift
//  Ratings
//
//  Created by Ashwin Paudel on 2020-08-19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		window = UIWindow(frame: UIScreen.main.bounds)
		let presenter = ViewController()
		window?.rootViewController = presenter
		window?.makeKeyAndVisible()
		return true
	}


}

