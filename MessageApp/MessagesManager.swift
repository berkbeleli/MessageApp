//
//  MessagesManager.swift
//  MessageApp
//
//  Created by Berk Beleli on 2022-04-06.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class MessagesManager: ObservableObject {
   
    @Published private(set) var messages: [Message] = []
    @Published private(set) var lastMessageId = ""
    
    let db = Firestore.firestore()
    
    
    init(){
        getMessages()
    }
    
    func getMessages(){
        db.collection("messages").addSnapshotListener { querySnapshot, error in
            
            guard let documents = querySnapshot?.documents else{
                print("Error fetching documents \(String(describing: error))")
           return
            }
            
            self.messages = documents.compactMap { document -> Message?  in
                do{
                    return try document.data(as: Message.self)
                }catch{
                    print("Error decoding documents")
                    return nil
                }
            }
            
            self.messages.sort { $0.time < $1.time }
            
            if let id = self.messages.last?.id{
                self.lastMessageId = id
            }
            
        }
    }
    
    
    func sendMessage(text: String){
        
        do{
            
            let newMessage = Message(id: "\(UUID())", text: text, received: false, time: Date())
            
            try db.collection("messages").document().setData(from: newMessage)
            
            
            
        }catch{
            
        }
        
        
    }
    
    
    
    
}
