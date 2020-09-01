//
//  ContentView.swift
//  SwiftUI_Practice1
//
//  Created by 이우석 on 2020/08/31.
//  Copyright © 2020 com.woosuk. All rights reserved.
//

import SwiftUI

struct MyProjectCard: View {
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            Text("연습용 UI 만들기")
                .font(.title)
                .fontWeight(.bold)
            HStack{
                Image("burger")
                .resizable()
                    .frame(width:50, height: 50)
                    .clipShape(Circle())
                
                Image("diet")
                .resizable()
                    .frame(width:50, height: 50)
                
                Image("milk")
                .resizable()
                    .frame(width:50, height: 50)
                
                Spacer()
                //확인버튼 액션
                Button(action: {
                    print("확인 버튼이 클릭되었다.")
                    
                    self.shouldShowAlert = true
                    
                }){
                    Text("확인")
                                .padding(20)
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(40)
                } .alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("알림창입니다."))
                }
               
                
            }
        }
            .padding(30)
            .background(Color.yellow)
            .cornerRadius(30)
        
        
        
        
    }
    
    
    
}

struct MyProjectCard_Previews : PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
