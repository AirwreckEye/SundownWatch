//
//  PrimaryButtonStyle.swift
//  SundownTown Watch
//
//  Created by AirwreckEye on 4/25/22.
//

import SwiftUI

struct LandingButtonStyle: ButtonStyle {
    var fillColor: Color = .black
    func makeBody(configuration: Configuration) -> some View {
        return LandingButton(
            configuration: configuration,
            fillColor: fillColor
        )
    }
    
    struct LandingButton: View {
        let configuration: Configuration
        let fillColor: Color
        var body: some View{
            return configuration.label
                .padding(35)
                .background(RoundedRectangle(cornerRadius: 50)
                    .fill(
                        fillColor
                    )
                        .scenePadding()
                )
                .frame(alignment: .bottom)
                
        }
    }
}
