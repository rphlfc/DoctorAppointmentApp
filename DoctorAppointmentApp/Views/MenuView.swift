//
//  MenuView.swift
//  DoctorAppointmentApp
//
//  Created by Raphael Cerqueira on 11/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var didSelect: () -> Void
    
    var body: some View {
        ZStack {
            Color("green").edgesIgnoringSafeArea(.all)
            
            HStack {
                VStack(alignment: .leading) {
                        Button(action: {
                            self.didSelect()
                        }) {
                            Image(systemName: "xmark")
                        }
                        
                    Image("profile")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.top, 32)
                    
                    Text("Darlene Robertson")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.top, 8)
                    
                    VStack(alignment: .leading) {
                        MenuItemView(image: "person", title: "Profile", didSelect: self.didSelect)
                        MenuItemView(image: "bell", title: "Notifications", didSelect: self.didSelect)
                        MenuItemView(image: "creditcard", title: "Payment", didSelect: self.didSelect)
                        MenuItemView(image: "calendar", title: "Appointments", didSelect: self.didSelect)
                        MenuItemView(image: "gear", title: "Settings", didSelect: self.didSelect)
                        MenuItemView(image: "questionmark.circle", title: "Help", didSelect: self.didSelect)
                        MenuItemView(image: "square.and.arrow.up", title: "Log out", didSelect: self.didSelect)
                            .padding(.top, 32)
                    }
                    .padding(.top, 32)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding()
                
                Spacer()
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView {
            
        }
    }
}

struct MenuItemView: View {
    var image: String
    var title: String
    
    var didSelect: () -> Void
    
    var body: some View {
        Button(action: {
            self.didSelect()
        }) {
            HStack {
                Image(systemName: self.image)
                
                Text(self.title)
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.leading, 8)
            }
        }
        .padding(.top)
    }
}
