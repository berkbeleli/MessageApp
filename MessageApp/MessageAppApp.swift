//
//  MessageAppApp.swift
//  MessageApp
//
//  Created by Berk Beleli on 2022-04-06.
//

import SwiftUI
import Firebase

@main
struct MessageAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
