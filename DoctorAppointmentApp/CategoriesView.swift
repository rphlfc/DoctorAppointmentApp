//
//  CategoriesView.swift
//  DoctorAppointmentApp
//
//  Created by Raphael Cerqueira on 09/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Categories")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(Color("primary"))
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    CategoryView(imageName: "heart.fill", backgroundColor: Color("green"), title: "Dental\nCare", doctors: "28")
                    
                    CategoryView(imageName: "heart.fill", backgroundColor: Color("yellow"), title: "Heart\nSpecialist", doctors: "16")
                    
                    CategoryView(imageName: "thermometer", backgroundColor: Color("red"), title: "Cough\n& Cold", doctors: "23")
                }
                .padding()
            }
        }
        .padding(.top)
    }
}

struct CategoryView: View {
    var imageName: String
    var backgroundColor: Color
    var title: String
    var doctors: String
    
    var body: some View {
        Button(action: {
            
        }) {
            VStack(alignment: .leading) {
                Image(systemName: imageName)
                    .font(.system(size: 48))
                    .frame(width: 90, height: 90)
                    .foregroundColor(.white)
                    .background(backgroundColor)
                    .cornerRadius(15)
                
                Text(title)
                    .font(.system(size: 21, weight: .medium))
                    .padding(.top, 8)
                
                Text("\(doctors) Doctors")
                    .font(.system(size: 14, weight: .medium))
                    .padding(.top, 8)
            }
            .foregroundColor(Color("primary"))
            .padding()
            .padding(.horizontal, 8)
            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.white).shadow(color: Color.black.opacity(0.05), radius: 8, x: 2, y: 8))
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
