//
//  ContentView.swift
//  Landmarks
//
//  Created by Ana Lucia Fermino de O. Arine on 15/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
