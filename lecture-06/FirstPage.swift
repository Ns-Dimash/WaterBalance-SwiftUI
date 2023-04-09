//
//  FirstPage.swift
//  lecture-06
//
//  Created by Dimash Nsanbaev on 4/9/23.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        VStack{
            Spacer()
            MainTitle()
            Spacer()
            SecondTitle(text: "What is your goal?")
            Spacer()
            mainly
            Spacer()
            Spacer()
            Buttona(inbutton: "Next")
        }
        
    }
}
private var mainly:some View{
    ZStack{
        Color(red: 212/255, green: 225/255, blue: 248/255).opacity(1)
            .frame(width: 358,height: 330)
            .cornerRadius(16)
        
        VStack(spacing: 14){
            HStack{
                Text("Goal Number One")
                    .font(.system(size: 16,weight: .semibold))
                Spacer()
                Image("blueee")
            }
            
            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
            .frame(width: 320,height: 60)
            .background(Color.white)
            .cornerRadius(16)
            
            HStack{
                Text("Goal Number Two")
                    .font(.system(size: 16,weight: .semibold))
                
                Spacer()
                Image("elipse")
            }
            
            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
            .frame(width: 320,height: 60)
            .background(Color.white)
            .cornerRadius(16)
            
            HStack{
                Text("Goal Number Three")
                    .font(.system(size: 16,weight: .semibold))
                
                Spacer()
                Image("elipse")
            }
            
            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
            .frame(width: 320,height: 60)
            .background(Color.white)
            .cornerRadius(16)
            
            HStack{
                Text("Goal Number Four")
                    .font(.system(size: 16,weight: .semibold))
                
                Spacer()
                Image("elipse")
            }
            
            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
            .frame(width: 320,height: 60)
            .background(Color.white)
            .cornerRadius(16)
        }.padding(EdgeInsets(top: 24, leading: 19, bottom: 24, trailing: 19))
    }
}


struct MainTitle:View{
    var body: some View{
        Text("Water Balance")
            .frame(width: 358,height: 40)
            .textCase(.uppercase)
            .font(.system(size: 24, weight: .black))
            .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255).opacity(1))
            .italic()
    }
}


struct SecondTitle:View{
    var text:String
    var body: some View{
        Text(text)
            .font(.system(size: 36, weight: .semibold))
            .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255).opacity(1))
            .kerning(-2)
    }
}
struct Buttona:View{
    var inbutton:String
    var body: some View{
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color(red: 24/255, green: 104/255, blue: 253/255).opacity(1))
                    .frame(width: 358,height: 60)
                Text(inbutton)
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .semibold))
            }
        }
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
