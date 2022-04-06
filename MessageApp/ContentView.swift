//
//  ContentView.swift
//  MessageApp
//
//  Created by Berk Beleli on 2022-04-06.
//

import SwiftUI

struct ContentView: View {
    
    var messageArray = ["Hello you", "How are you doing?", "I have been coding SwiftUI applications from scratch and it's so much fun!"]
    
    
    var body: some View {
        
        VStack{
            TitleRow()
            
            ScrollView{
                
                ForEach(messageArray, id: \.self){ text in
                    
                    MessageBubble(message: Message(id: "12345", text: text, received: true, time: Date()))
                    
                }
                
                
            }
            .padding(.top, 10)
            .background(.white)
            
            
        }
        .background(Color("Blue"))
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
