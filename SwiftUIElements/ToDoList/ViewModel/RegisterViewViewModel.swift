//
//  RegisterViewViewModel.swift
//  SwiftUIElements
//
//  Created by Apple on 14/02/24.
//


import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel:ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    
    func regsiter() {
        guard validation() else{
          return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] authResult , error in
            
            if let error = error{
               
                print(error)
            }
            
            guard let userId = authResult?.user.uid else{
                return
            }
            
            self?.insertUserRecords(userId: userId)
        
        }
        
    }
    
    private func insertUserRecords(userId:String){
        let newUser = User(id: userId, name: name, email: email, joined: Date().timeIntervalSince1970)
        let db =  Firestore.firestore()
        db.collection("users")
            .document(userId)
            .setData(newUser.asDictionary())
    }
    private func validation() ->Bool {
      
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage  = "Please fill in all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        guard password.count >= 6 else {
            return false
        }
        return true
    }
    
    
}
