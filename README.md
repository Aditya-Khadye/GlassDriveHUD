
# DriverHUD VisionOS Demo

A demonstration Heads-Up Display (HUD) interface built for Apple Vision Pro using SwiftUI and VisionOS. Inspired by real automotive HUDs, especially those from Jaguar Land Rover (JLR), this app showcases:

- 🛣️ Multi-window driving simulation views (left, center, right)
- 🏎️ Real-time speed display with customizable fonts
- 🎨 Dynamic font picker for testing Monotype-styled typefaces
- 🧪 UI-focused for visual prototyping, not tied to live simulator data yet

## Features

- Modular views: `LeftDrivingView`, `CenterDrivingView`, `RightDrivingView`, `SpeedHUD`
- Font toggle menu (Monotype-inspired fonts)
- VisionOS multi-window layout demo
- Fixed-scale HUD visuals with layered overlays

## Usage

1. Clone the repo
2. Open in Xcode 15+ with visionOS SDK
3. Run in the Vision Pro Simulator
4. Use the HUD window to toggle fonts and see layout behavior

## Notes

- This is a visual demo only; data is mocked (e.g., speed = 65 MPH)
- Works best with the Vision Pro Simulator and VisionOS preview tools
- Fonts must be included in the bundle and registered in Info.plist for custom display
