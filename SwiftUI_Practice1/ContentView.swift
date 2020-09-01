//
//  ContentView.swift
//  SwiftUI_Practice1
//
//  Created by 이우석 on 2020/08/31.
//  Copyright © 2020 com.woosuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing){
            
            VStack(alignment: .leading, spacing: 0){
                
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                Text("이우석의 앱")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(20)
            
                
                ScrollView{
            
            VStack{
                    MyProjectCard()
                    MyBasicCard()
                MyCard(icon: "trash.fill", title: "책상 정리하기", start: "10AM", end: "11AM", bgColor: Color.blue)
                MyCard(icon: "cart.fill", title: "장보기", start: "8PM", end: "11PM", bgColor: Color.red)
                MyCard(icon: "pencil.circle", title: "공부하기", start: "07AM", end: "12PM", bgColor: Color.gray)
                MyCard(icon: "heart.fill", title: "운동하기", start: "07PM", end: "08PM", bgColor: Color.orange)
                MyCard(icon: "car.fill", title: "운전하기", start: "11PM", end: "01AM", bgColor: Color.pink)
                  
                    }
                    
                }
                
            } .padding(25)
        
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width:60, height: 60)
            .overlay(Image(systemName: "plus")
                .font(.system(size:40))
                .foregroundColor(Color.white))
                
                .padding(10)
            .shadow(radius: 20)
        }
            
            }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
