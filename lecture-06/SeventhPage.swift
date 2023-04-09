//
//  SeventhPage.swift
//  lecture-06
//
//  Created by Dimash Nsanbaev on 4/9/23.
//

import SwiftUI

struct SeventhPage: View {
    @State private var tabIndex = 0
    
    var body: some View {
        TabView(selection: $tabIndex){
            
            Text("Third")
                .tabItem {
                    Label("Main", image: "grayMain")
                }
            
            VStack{
                NavTitle(text: "EDIT")
                Spacer()
                mainly
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
            }
            .tabItem {
                Label("Settings",image: "BlueSetting") // redundant
            }
            .tag(0)
            
            Text("Second")
                .tabItem {
                    Label("History", image: "mainHistory")
                }
        }.accentColor(.blue)
    }
    var mainly: some View {
        VStack{
            HStack{
                Text("Daily Intake Level")
                    .font(.system(size: 17,weight: .regular))
                Spacer()
                Text("2400")
                    .foregroundColor(.gray)
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)

            }
            .padding(16)
            .frame(width: 390,height: 44)
            Divider()

            HStack{
                Text("Your goal")
                    .font(.system(size: 17,weight: .regular))
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)

            }
            .padding(16)
            .frame(width: 390,height: 44)
            Divider()
            HStack{
                Text("Reminder")
                    .font(.system(size: 17,weight: .regular))
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)

            }
            .padding(16)
            .frame(width: 390,height: 44)
            Divider()
        }
    }
}

struct SeventhPage_Previews: PreviewProvider {
    static var previews: some View {
        SeventhPage()
    }
}
