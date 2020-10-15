//
//  AppDelegate.swift
//  NStackDemo
//
//  Created by Marius Constantinescu on 15/10/2020.
//

import UIKit
import NStackSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupNStack(with: launchOptions)
        return true
    }

    private func setupNStack(with launchOptions: [UIApplication.LaunchOptionsKey: Any]? ) {
        var nStackConfig = Configuration(plistName: "NStack",
                                         environment: .production,     // You can switch here based on your app's current environment
                                         localizationClass: Localizations.self)
        nStackConfig.updateOptions = [.onDidBecomeActive]
        NStack.start(configuration: nStackConfig, launchOptions: launchOptions)
        NStack.sharedInstance.localizationManager?.updateLocalizations()
    }
}
