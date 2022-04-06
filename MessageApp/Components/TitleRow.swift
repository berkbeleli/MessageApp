//
//  TitleRow.swift
//  MessageApp
//
//  Created by Berk Beleli on 2022-04-06.
//

import SwiftUI

struct TitleRow: View {
    
    var imageUrl = URL(string: "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg")
    
    var name: String = "Berk Beleli"
    
    var body: some View {
       
        HStack(spacing: 20){
            
            AsyncImage(url: imageUrl) { image in
                
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                
            }placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading){
                    Text(name)
                    .font(.title.bold())
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(Color(.darkGray))
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
            
        }
        .padding()
        
        
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Head"))            
    }
}
