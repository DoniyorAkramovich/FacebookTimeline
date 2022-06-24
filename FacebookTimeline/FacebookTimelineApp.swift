//
//  FacebookTimelineApp.swift
//  FacebookTimeline
//
//  Created by Doniyor on 23/06/22.
//

import SwiftUI

@main
struct FacebookTimelineApp: App {
    var body: some Scene {
        WindowGroup {
            HomeScreen()
        }
    }
}

extension UIScreen {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
