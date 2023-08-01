//
//  FruitsApp.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 28/07/23.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage(UserDefaultKeys.isOnboardingViewed) var isOnboardingViewed: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboardingViewed {
                HomeView()
            } else {
                OnboardingView()
            }
        }
    }
}
