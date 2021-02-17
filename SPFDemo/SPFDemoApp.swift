//
//  SPFDemoApp.swift
//  SPFDemo
//
//  Created by differenz157 on 16/02/21.
//

import SwiftUI
import Firebase
import GoogleSignIn

@main
struct SPFDemoApp: App {
   
    init() {
        FirebaseApp.configure()
        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

