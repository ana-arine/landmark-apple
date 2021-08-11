//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Ana Lucia Fermino de O. Arine on 15/07/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
            NavigationLink(
                destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
        }
                }
        }
        .navigationTitle("Landmarks")
        }
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//            LandmarkRow(landmark: landmarks[2])
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
        
        // PARA VER O APP EM DEVICES ESPECÍFICOS E DIFERENTES
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
//                    LandmarkList()
//                        .previewDevice(PreviewDevice(rawValue: deviceName))
//                        .previewDisplayName(deviceName)
//        }
    }
}
