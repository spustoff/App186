//
//  App186App.swift
//  App186
//
//  Created by Вячеслав on 9/7/23.
//

import SwiftUI
import FirebaseCore
import ApphudSDK
import Amplitude

class AppDelegate: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Apphud.start(apiKey: "app_izKDZo9FPLvuUV6ZD1XcZPpyagSyqM")
        Amplitude.instance().initializeApiKey("0ff495398895250b0f1b7965639dde52")

        FirebaseApp.configure()
        
        return true
    }
}

@main
struct App186App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView(content: {
                
                ContentView()
            })
        }
    }
}
