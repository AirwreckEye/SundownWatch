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
