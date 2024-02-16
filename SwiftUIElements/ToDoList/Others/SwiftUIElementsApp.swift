//
//  SwiftUIElementsApp.swift
//  SwiftUIElements
//
//  Created by Apple on 11/01/24.
//

import FirebaseCore
import SwiftUI

@main
struct SwiftUIElementsApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        
        }
    }
}
