//
//  DriverHUDApp.swift
//  DriverHUD
//
//  Created by Aditya Khadye on 7/22/25.
//

import SwiftUI

@main
struct DriverHUDApp: App {
    var body: some Scene {
        WindowGroup(id: "Main") {
            ContentView()
                .onAppear {
                    WindowCoordinator.shared.openWindow = { id in
                        UIApplication.shared.requestSceneSessionActivation(nil, userActivity: makeUserActivity(id: id), options: nil, errorHandler: nil)
                    }
                }
        }

        WindowGroup(id: "Left") {
            LeftDrivingView()
        }

        WindowGroup(id: "Center") {
            CenterDrivingView()
        }

        WindowGroup(id: "Right") {
            RightDrivingView()
        }

        WindowGroup(id: "Speed") {
            SpeedHUD()
        }
    }

    private func makeUserActivity(id: String) -> NSUserActivity {
        let activity = NSUserActivity(activityType: "com.example.DriverHUD.openWindow")
        activity.targetContentIdentifier = id
        return activity
    }
}
