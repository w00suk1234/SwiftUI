//
//  MyBasicCard.swift
//  SwiftUI_Practice1
//
//  Created by 이우석 on 2020/08/31.
//  Copyright © 2020 com.woosuk. All rights reserved.
//

import SwiftUI

struct MyBasicCard: View{
    
    var body: some View {
        
        HStack(spacing:20){
            Image(systemName: "flag.fill")
                .font(.system(size:40))
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading, spacing: 0){
                Rectangle().frame(height:0)
                
            Text("유튜브")
                .fontWeight(.bold)
                .font(.system(size:25))
                .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
            Text("유튜브")
                .foregroundColor(Color.white)
        }
        }
    .padding(20)
        .background(Color.purple)
    .cornerRadius(20)
    }
    
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
