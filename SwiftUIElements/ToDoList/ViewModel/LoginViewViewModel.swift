//
//  LoginViewViewModel.swift
//  SwiftUIElements
//
//  Created by Apple on 14/02/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel:ObservableObject{
    
    @Published  var email:String = ""
    @Published  var password:String = ""
    @Published  var errormessage = ""
    init(){
        
    }
    
    func login() {
        
        guard validation() else{
            return
        }
        
        // firebase Auth
        Auth.auth().signIn(withEmail: email, password: password)
        
        
    }
    
    private func validation() -> Bool{
        errormessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            
            errormessage = "Please fil in all fields."
            return false
        }
        
        guard !email.contains("@") && !email.contains(".") else{
            
            errormessage = "Please enter Valid email."
            return false
        }
        
        return true
    }
    
}
