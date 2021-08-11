//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ana Lucia Fermino de O. Arine on 15/07/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
