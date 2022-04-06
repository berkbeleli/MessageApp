//
//  Message.swift
//  MessageApp
//
//  Created by Berk Beleli on 2022-04-06.
//

import Foundation


struct Message: Identifiable, Codable {
    
    var id: String
    var text: String
    var receivedState: Bool
    var time: Date
    
    
}
