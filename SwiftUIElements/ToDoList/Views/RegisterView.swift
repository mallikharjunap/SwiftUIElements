//
//  RegisterView.swift
//  SwiftUIElements
//
//  Created by Apple on 14/02/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var registerModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", Subtitle: " Start Orgainising todo", angle: -15, background: .yellow)
            
            Form {
                
                if !registerModel.errorMessage.isEmpty {
                    Text(registerModel.errorMessage)
                        .foregroundColor(Color.red)
                }
                
                TextField("Full Name", text: $registerModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Adress", text: $registerModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $registerModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(
                    title: "Create Account",
                    backgroundColr: .green
                ){
                    registerModel.regsiter()
                }
                .padding()
            }
            .offset(y:-50)
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
