//
//  ContentView.swift
//  SwiftUIElements
//
//  Created by Apple on 11/01/24.
//


import SwiftUI

struct MainView: View {
    
    
    
    @State var homeDetailPage = false
    
    //var items = ["item 1","item2","item3","item4"]
    var body: some View {
        /* label TEXT */
        
        VStack {
            //HeaderView
            LoginView()
            
            
            

            //Text("User Name")
//            .foregroundColor(.blue)
//            .frame(maxWidth: .infinity,alignment: .leading)
//            /*  TextField */
//                TextField("Enter UserName", text: $FirstName)
//                .padding()
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//                Text("Password")
//                .foregroundColor(.blue)
//                .frame(maxWidth:.infinity,alignment: .leading)
//
//                TextField("Password", text:$LastName)
//                .padding()
//                .textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
      
        
//        /*  Image */
//        Image(systemName: "star.fill")
//            .resizable()
//            .frame(width: 30.0,height: 40.0)
//            .foregroundColor(.red)
//
//
        
        
//        /* BUTTON */
//        Button {
//
//            print("Button pressed")
//            homeDetailPage.toggle()
//
//        } label: {
//            Text("Tap me")
//                .padding(20)
//                .foregroundColor(.white)
//                .cornerRadius(10)
//
//        }
//        .frame(width: 300,height: 50.0)
//        .background(.red)
//        .sheet(isPresented: $homeDetailPage) {
//            HomeView()
//        }
//
        
        
        
        
        // List //
        
//        List(items,id: \.self) { item in
//
//            Text(item)
//        }

        // Naviagtion //
        
//        NavigationView {
//            VStack{
//                NavigationLink(destination: HomeView()) {
//                    Text("Navigation to Destination View")
//                }
//            }
//        }
        
        
    }
    
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }

}
