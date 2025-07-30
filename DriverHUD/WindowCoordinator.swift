//
//  WindowCoordinator.swift
//  DriverHUD
//
//  Created by Dev Aditya on 7/29/25.
//


import SwiftUI

class WindowCoordinator: ObservableObject {
    static let shared = WindowCoordinator()
    
    var openWindow: ((String) -> Void)?
    
    private init() {}
    
    func open(_ id: String) {
        openWindow?(id)
    }
}