//
//  FifthPage.swift
//  lecture-06
//
//  Created by Dimash Nsanbaev on 4/9/23.
//

import SwiftUI

struct FifthPage: View {
        var body: some View {
            TabView{
                VStack{
                    NavTitle(text: "Water")
                    Spacer()
                    mainly
                    Spacer()
                    CenterTitle(text: "Great job! ")
                    Spacer()
                    Buttona(inbutton: "Add")
                    Spacer()

                }
                .tabItem {
                    Label("Main", image: "mainHome")
                }
                
                Text("Second")
                    .tabItem {
                        Label("Settings",image: "mainSettings") // redundant
                    }
                
                Text("Third")
                    .tabItem {
                        Label("History", image: "mainHistory")
                    }
            }.accentColor(.blue)
            
        }
    
    var mainly: some View {
        ZStack{
            Color.clear
            .frame(width: 358,height: 332)
            
            VStack{
                ZStack{
                    Circle()
                        .stroke(
                            Color.white,
                            lineWidth: 6
                        )
                        .frame(width: 180)
                    Image("level")
                    VStack(spacing: 10){
                        Text("34 %")
                            .font(.system(size: 36,weight: .bold))
                        Text("0,8 out of 2,4 L")
                            .font(.system(size: 16,weight: .medium))
                            .foregroundColor(.white)
                    }
                    
                }
            }.padding(.bottom,60)
            
            Text("Monday, 25th of November")
                .padding(.top,250)
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color(red: 212/255, green: 225/255, blue: 248/255).opacity(1), .white]),
                startPoint: .top,
                endPoint: .bottom))
        .cornerRadius(16)
    }
}


struct FifthPage_Previews: PreviewProvider {
    static var previews: some View {
        FifthPage()
    }
}
