//
//  StateList.swift
//  Sundown Watch
//
//  Created by AirwreckEye on 5/24/22.
//

import SwiftUI

struct StateList: View {
    var body: some View {
        VStack {
        Text("States with Sundown Towns")
                .font(Font.custom("Lovelo-Black", size: 25))
            List(allLocations) { location in
            StateRow(location: location)
        }
    }
    }
}


struct StateList_Previews: PreviewProvider {
    static var previews: some View {
        StateList()
    }
}
