//
//  OurServicesView.swift
//  DoctorAppointmentApp
//
//  Created by Raphael Cerqueira on 09/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct OurServicesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Our Services")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color("primary"))
            
            ServiceView(image: "house", color: Color("green"), title: "Home visit", subtitle: "Care in the confort of your own home")
                .padding(.top)
            
            ServiceView(image: "video", color: Color("yellow"), title: "Videocall", subtitle: "Consultation from anywhere you want")
        }
        .padding(.top)
        .padding(.horizontal)
    }
}

struct ServiceView: View {
    var image: String
    var color: Color
    var title: String
    var subtitle: String
    
    var body: some View {
        Button(action: {
            
        }) {
            HStack {
                Image(systemName: image)
                    .font(.system(size: 28))
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .background(color)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 20, weight: .bold))
                    
                    Text(subtitle)
                        .font(.system(size: 15, weight: .medium))
                        .padding(.top, 8)
                }
                .padding(.leading, 8)
            }
            .foregroundColor(Color("primary"))
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).strokeBorder(Color("tertiary"), lineWidth: 2))
        }
    }
}

struct OurServicesView_Previews: PreviewProvider {
    static var previews: some View {
        OurServicesView()
    }
}
