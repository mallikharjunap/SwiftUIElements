//
//  RegisterView.swift
//  SwiftUIElements
//
//  Created by Apple on 14/02/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            HeaderView(title: "Register", Subtitle: " Start Orgainising todo", angle: -15, background: .yellow)
            
            Form {
                
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Adress", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(
                    title: "Create Account",
                    backgroundColr: .green
                ){
                    //Action
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
