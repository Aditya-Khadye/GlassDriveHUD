//
//  SpeedHUD.swift
//  DriverHUD
//
//  Created by Dev Aditya on 7/29/25.
//

import SwiftUI

// 🔹 Subview to ensure font switching triggers re-render
struct FontPreview: View {
    let speed: Int
    let fontName: String
    let fontSize: CGFloat

    var body: some View {
        Text("\(speed) MPH")
            .font(.custom(fontName, size: fontSize))
            .foregroundColor(.white)
            .padding(12)
            .background(Color.black.opacity(0.5))
            .cornerRadius(12)
            .transition(.opacity)
    }
}

struct SpeedHUD: View {
    @State private var speed = 65
    @State private var selectedFont = "Slade Pro"
    
    // 🔹 Fonts for toggling — must be added in Info.plist and project
    let demoFonts = [
        "DINNextLTPro-Regular",
        "SlatePro",
        "EurostileLTStd",
        "AvenirNext-Regular",
        "HelveticaNeue",
        "FrutigerNextLT-Regular",
        "FFMetaOT",
        "UniversLTStd-Light",
        "ITCFranklinGothicStd-Bk",
        "AkkoPro-Regular",
        "NeueHaasGroteskText Pro",
        "FuturaPT-Book",
        "TradeGothicLTStd",
        "VerdanaPro-Regular",
        "GillSansNova"
    ]
    let fixedFontSize: CGFloat = 36

    var body: some View {
        VStack {
            Spacer()
            
            // 🔹 Dynamic font display
            FontPreview(speed: speed, fontName: selectedFont, fontSize: fixedFontSize)
            
            Spacer()
            
            // 🔹 Font toggle menu
            Picker("Font", selection: $selectedFont) {
                ForEach(demoFonts, id: \.self) { fontName in
                    Text(fontName).tag(fontName)
                }
            }
            .pickerStyle(.menu)
//            Button("Go to Main Screen") {
//                WindowCoordinator.shared.open("Main")
//            }
        }
        .padding()
        .frame(minWidth: 200, minHeight: 100)
    }
}
