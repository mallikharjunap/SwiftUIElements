//
//  LoginView.swift
//  SwiftUIElements
//
//  Created by Apple on 14/02/24.
//

import SwiftUI

struct LoginView: View {
    
    @State  var email:String = ""
    @State  var password:String = ""
    var body: some View {
        
        
        NavigationView {
            VStack{
               // Header //
                HeaderView(title: "To Do List", Subtitle: "Get This done", angle: 15, background: .pink)
            
                Form{
                    
                    TextField("Email Address",text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password",text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", backgroundColr: .blue, action: {
                        //Action
                    })
                   .padding()
                }
                .offset(y:-50)
               
                VStack{
                    Text("New around Here?")
                    NavigationLink("Create an New Account", destination: RegisterView())

                }
                .padding(.bottom,50)
            }
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
