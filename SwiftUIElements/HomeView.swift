//
//  HomeView.swift
//  SwiftUIElements
//
//  Created by Apple on 12/01/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var homeToggle:Bool = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button {
            
            homeToggle =  true
        } label: {
            Text("Moving to Storyboard")
            
            
        }
        
        if homeToggle{
            Stroyboardwrapper()
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
