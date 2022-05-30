//
//  StateListView.swift
//  Sundown Watch
//
//  Created by AirwreckEye on 5/23/22.
//

import SwiftUI

struct StateRow: View {
    var location: Location
    
    var body: some View {
        HStack {
            Image(location.state)
                .resizable()
                .frame(width: 75, height: 50)
            Text(location.state)
                .font(Font.custom("Lovelo-Black", size: 20))
        
            
            Spacer()
            
        }
    }
}

struct StateRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            StateRow(location: allLocations[0])
            StateRow(location: allLocations[1])
            StateRow(location: allLocations[2])
        }
        .previewLayout(.fixed(width: 400, height: 70))
    }
}
