//
//  MainViewViewModel.swift
//  SwiftUIElements
//
//  Created by Apple on 14/02/24.
//

import FirebaseAuth
import Foundation


class MainViewViewModel:ObservableObject {
    
    @Published var currentUserId:String = ""
    private var handle:AuthStateDidChangeListenerHandle?
    init(){
        self.handle =  Auth.auth().addStateDidChangeListener { [weak self]_, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
            
        }
    }
    
    public var isSigned:Bool{
        return Auth.auth().currentUser != nil
    }
}

