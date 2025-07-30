//
//  DrivingViewsScreen.swift
//  DriverHUD
//
//  Created by Dev Aditya on 7/29/25.
//


import SwiftUI

struct DrivingViewsScreen: View {
    var body: some View {
        GeometryReader { geo in
            let w = geo.size.width / 3
            let h = geo.size.height

            HStack(spacing: 0) {
                Image("left_view")
                    .resizable()
                    .scaledToFill()
                    .frame(width: w, height: h)
                    .clipped()

                Image("center_view")
                    .resizable()
                    .scaledToFill()
                    .frame(width: w, height: h)
                    .clipped()

                Image("right_view")
                    .resizable()
                    .scaledToFill()
                    .frame(width: w, height: h)
                    .clipped()
            }
            .ignoresSafeArea()
        }
    }
}
