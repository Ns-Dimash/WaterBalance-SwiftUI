//
//  FourthPage.swift
//  lecture-06
//
//  Created by Dimash Nsanbaev on 4/9/23.
//

import SwiftUI

struct FourthPage: View {
    var body: some View {
        TabView{
            VStack{
                NavTitle(text: "Water Balance")
                Spacer()
                mainly
                Spacer()
                CenterTitle(text: "Add your first drink for today")
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
    
    var mainly:some View{
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
                    VStack(spacing: 10){
                        Text("0 %")
                            .font(.system(size: 36,weight: .bold))
                        Text("0 out of 2,4 L")
                            .font(.system(size: 16,weight: .medium))
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
struct NavTitle:View{
    var text:String
    var body: some View{
        Text(text)
            .frame(width: 358,height: 40)
            .textCase(.uppercase)
            .font(.system(size: 17, weight: .black))
            .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255).opacity(1))
            .italic()
    }
}


struct CenterTitle:View{
    var text:String
    var body: some View{
        Text(text)
            .font(.system(size: 36, weight: .semibold))
            .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255).opacity(1))
            .kerning(-2)
            .multilineTextAlignment(.center)
    }
}

struct FourthPage_Previews: PreviewProvider {
    static var previews: some View {
        FourthPage()
    }
}
