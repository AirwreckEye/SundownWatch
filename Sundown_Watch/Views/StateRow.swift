//
//  StateListView.swift
//  Sundown Watch
//
//  Created by AirwreckEye on 5/23/22.
//

import SwiftUI

struct StateRow: View {
    @State private var isExpanded = false
    var location: Location
    
    var body: some View {
        DisclosureGroup (isExpanded: $isExpanded, content: {
            ScrollView {
                VStack {
                    ForEach(location.towns, id: \.id){ town in
                        HStack {
                            Text(town.town)
                                .font(Font.custom("Lovelo-Black", size: 15))
                            Spacer()
                        }
                        Spacer()
                    }
                }
            }
            .frame(height: 75, alignment: .leading)
        }, label: {
            Image(location.state)
                .resizable()
                .frame(width: 75, height: 50)
            Spacer()
            Text(location.state)
                .font(Font.custom("Lovelo-Black", size: 20))
            Spacer()

        })
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
