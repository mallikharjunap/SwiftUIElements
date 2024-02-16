//
//  HeaderView.swift
//  SwiftUIElements
//
//  Created by Apple on 14/02/24.
//

import SwiftUI

struct HeaderView: View {
    
    var title:String
    var Subtitle:String
    var angle:Double
    var background:Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(Subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top,30)
        }
        .frame(width: UIScreen.main.bounds.width*3,height: 350)
        .offset(y:-130)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", Subtitle: "Subtitle", angle: 15, background: .blue)
    }
}
