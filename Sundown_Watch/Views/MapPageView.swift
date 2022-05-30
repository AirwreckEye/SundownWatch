//
//  MapPageView.swift
//  Sundown Watch
//
//  Created by AirwreckEye on 4/25/22.
//
import MapKit
import SwiftUI


struct MapPageView: View {
    @State var allLocations: [Location]
    @State var allTowns: [Town]
    
    
    @State private var coordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.8283, longitude: -98.5795), span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 55)
    )
    
    var body: some View {
        Map(coordinateRegion: $coordinateRegion, interactionModes: .all, annotationItems: allTowns) { town in
            MapAnnotation(coordinate: town.townCoordinate) {
                VStack{
                Image(systemName: "mappin")
                    .foregroundColor(.red)
                }
            }
        }
        .frame(height: 800, alignment: .topLeading)
    }
}


struct MapPageView_Previews: PreviewProvider {
    static var previews: some View {
        MapPageView(allLocations: allLocations, allTowns: allTowns)
    }
}


