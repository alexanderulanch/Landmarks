//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Alex Ulanch on 6/18/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData

    
    var body: some View {
        NavigationSplitView {
            modelData.features[0].image
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()

            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle("Featured")
                
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}