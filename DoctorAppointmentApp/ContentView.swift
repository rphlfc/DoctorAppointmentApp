//
//  ContentView.swift
//  DoctorAppointmentApp
//
//  Created by Raphael Cerqueira on 09/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopAndSearchView()
            
            CategoriesView()
            
            OurServicesView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
