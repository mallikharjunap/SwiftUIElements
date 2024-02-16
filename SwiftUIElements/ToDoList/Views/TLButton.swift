//
//  TLButton.swift
//  SwiftUIElements
//
//  Created by Apple on 16/02/24.
//

import SwiftUI

struct TLButton: View {
    let title:String
    let backgroundColr:Color
    let action:() -> Void
    var body: some View {
        
        Button {
            // Attempt login
            action()
        } label: {
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColr)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value",backgroundColr: Color.pink) {
            //Action
        }
    }
}
