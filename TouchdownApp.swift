//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Binyamin on 25/03/2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
