//
//  TopAndSearchView.swift
//  DoctorAppointmentApp
//
//  Created by Raphael Cerqueira on 09/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TopAndSearchView: View {
    @State var search = ""
    var didSelectMenu: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                self.didSelectMenu()
            }) {
                VStack(alignment: .leading, spacing: 6) {
                    RoundedRectangle(cornerRadius: 3)
                        .frame(width: 24, height: 3)
                    
                    RoundedRectangle(cornerRadius: 3)
                        .frame(width: 16, height: 3)
                }
                .foregroundColor(Color("primary"))
            }
            
            VStack(alignment: .leading) {
                Text("Good Morning Darlene!")
                
                Text("Need a Doctor?")
            }
            .font(.system(size: 32, weight: .bold))
            .foregroundColor(Color("primary"))
            .padding(.top)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 24))
                    .padding(.leading)
                
                TextField("Search", text: self.$search)
                    .foregroundColor(Color("secondary"))
                    .padding(.leading)
            }
            .frame(height: 55)
            .background(RoundedRectangle(cornerRadius: 15).fill(Color("tertiary")))
            .padding(.top)
        }
        .padding()
    }
}

struct TopAndSearchView_Previews: PreviewProvider {
    static var previews: some View {
        TopAndSearchView {
            
        }
    }
}
