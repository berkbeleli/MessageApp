//
//  MessageBubble.swift
//  MessageApp
//
//  Created by Berk Beleli on 2022-04-06.
//

import SwiftUI

struct MessageBubble: View {
    
    var message: Message
    
    @State private var showTime: Bool = false
    
    
    var body: some View {
        
        VStack(alignment: message.received ? .leading : .trailing) {
            
            
            
            HStack{
                Text(message.text)
                    .padding()
                    .background(message.received ? Color(.gray) : Color("Blue"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.time.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing , 25)
            }
            
        
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing )
        
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
        
        
        
        
        
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(message: Message(id: "12345", text: "I have been coding SwiftUI applications from scratch and it's so much fun!", received: true, time: Date()))
    }
}
