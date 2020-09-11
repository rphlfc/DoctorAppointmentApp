//
//  ContentView.swift
//  DoctorAppointmentApp
//
//  Created by Raphael Cerqueira on 09/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isMenuClosed = false
    
    var body: some View {
        ZStack {
            MenuView {
                self.isMenuClosed.toggle()
            }
            
            GeometryReader { geometry in
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white.opacity(0.4))
                        .offset(x: self.isMenuClosed ? 0 : -40)
                        .padding(.vertical, 32)
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white.opacity(0.7))
                        .offset(x: self.isMenuClosed ? 0 : -20)
                        .padding(.vertical, 16)
                    
                    HomeView {
                        self.isMenuClosed.toggle()
                    }
                    .cornerRadius(self.isMenuClosed ? 0 : 30)
                }
                .offset(x: self.isMenuClosed ? 0 : geometry.size.width * 0.7, y: self.isMenuClosed ? 0 : 40)
                .scaleEffect(self.isMenuClosed ? 1 : 0.9)
                .rotationEffect(Angle.degrees(self.isMenuClosed ? 0 : -12))
                .animation(.spring())
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
