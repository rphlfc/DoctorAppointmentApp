//
//  HomeView.swift
//  DoctorAppointmentApp
//
//  Created by Raphael Cerqueira on 11/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var didSelectMenu: () -> Void
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                TopAndSearchView(didSelectMenu: self.didSelectMenu)
                
                CategoriesView()
                
                OurServicesView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView {
            
        }
    }
}
