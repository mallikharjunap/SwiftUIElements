//
//  StoryBoardView.swift
//  SwiftUIElements
//
//  Created by Apple on 09/02/24.
//

import SwiftUI

struct StoryBoardView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
       // Stroyboardwrapper()
    }
}


struct Stroyboardwrapper: UIViewControllerRepresentable {
    

    func makeUIViewController(context: Context) -> UIHostingController<StoryBoardView> {
        let storyboard =  UIStoryboard(name: "Main", bundle: nil)
        let viewcontroler = storyboard.instantiateViewController(identifier: "userStoryboard") as! loginPage
        return UIHostingController(rootView: StoryBoardView())
    }
    
    
    func updateUIViewController(_ uiViewController: UIHostingController<StoryBoardView>, context: Context) {
        
        
    }
    
}

struct StoryBoardView_Previews: PreviewProvider {
    static var previews: some View {
        StoryBoardView()
        
    }
}
