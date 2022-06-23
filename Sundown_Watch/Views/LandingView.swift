//
//  ContentView.swift
//  SundownTown Watch
//
//  Created by AirwreckEye on 4/25/22.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
    NavigationView {
        VStack {
            Spacer()
            NavigationLink(destination:
                NavTab())
             {
                    HStack {
                        Text("Stay vigilant")
                            .font(Font.custom("Lovelo-Black", size: 25))
                            .foregroundColor(.white).shadow(radius: 250)
                        Image(systemName: "binoculars.fill")
                            .foregroundColor(.white)
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                        
                    }
                    .padding(40)
                    .background(RoundedRectangle(cornerRadius: 60)
                        .fill(.black)
                        .scenePadding()
                    )
             
             }.padding()

        }.frame(maxWidth: .infinity,
                maxHeight: .infinity)
        .background(
            Image("sdwlanding")
                .resizable().scaledToFill()
        ).edgesIgnoringSafeArea(.all)
          
            
    }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
