//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Alex Ulanch on 6/13/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
