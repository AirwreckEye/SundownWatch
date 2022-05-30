//
//  ContentView.swift
//  SundownTown Watch
//
//  Created by AirwreckEye on 4/25/22.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            Spacer()
                Button(action: {}){
                HStack {
                    Text("Stay vigilant")
                        .font(.system(size: 30,
                                      weight: .semibold
                                      ))
                        .foregroundColor(.white).shadow(radius: 250)
                    Image(systemName: "binoculars.fill")
                        .foregroundColor(.white)
                    Image(systemName: "arrow.right")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                
            }
            }.buttonStyle(LandingButtonStyle())
        }.frame(maxWidth: .infinity,
                maxHeight: .infinity)
        .background(
            Image("sdwlanding")
                .resizable().scaledToFill()
        ).edgesIgnoringSafeArea(.all)
            
    
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
