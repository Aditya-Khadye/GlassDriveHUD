//
//  ContentView.swift
//  DriverHUD
//
//  Created by Aditya Khadye on 7/22/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openWindow) private var openWindow

    var body: some View {
        VStack(spacing: 20) {
            Button("Open Left View") {
                openWindow(id: "Left")
            }

            Button("Open Center View") {
                openWindow(id: "Center")
            }

            Button("Open Right View") {
                openWindow(id: "Right")
            }

            Button("Open Speed HUD") {
                openWindow(id: "Speed")
            }
        }
        .padding()
    }
}
