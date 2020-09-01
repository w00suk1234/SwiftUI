//
//  MyBasicCard.swift
//  SwiftUI_Practice1
//
//  Created by 이우석 on 2020/08/31.
//  Copyright © 2020 com.woosuk. All rights reserved.
//

import SwiftUI

struct MyCard: View{
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View {
        
        HStack(spacing:20){
            Image(systemName: icon)
                .font(.system(size:40))
                .foregroundColor(Color.white)
            
            VStack(alignment: .leading, spacing: 0){
                Rectangle().frame(height:0)
                
            Text(title)
                .fontWeight(.bold)
                .font(.system(size:25))
                .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
            Text("\(start) - \(end)")
                .foregroundColor(Color.white)
        }
        }
    .padding(20)
        .background(bgColor)
    .cornerRadius(20)
    }
    
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "trash.fill", title: "책 읽기", start: "1시부터", end: "3시까지", bgColor: Color.green)
    }
}
