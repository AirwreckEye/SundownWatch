//
//  NavTab.swift
//  Sundown_Watch
//
//  Created by AirwreckEye on 6/5/22.
//

import SwiftUI

struct NavTab: View {
    var body: some View {
        TabView {
            MapPageView(allLocations: allLocations, allTowns: allTowns)
                .tabItem {
                    Image(systemName: "map")
                    Text("Map Page")
                }
            StateList()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("State List")
                }
        }
        
        
    }
}

struct NavTab_Previews: PreviewProvider {
    static var previews: some View {
        NavTab()
    }
}
