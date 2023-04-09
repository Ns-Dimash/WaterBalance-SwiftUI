//
//  ThirdPage.swift
//  lecture-06
//
//  Created by Dimash Nsanbaev on 4/9/23.
//

import SwiftUI

struct ThirdPage: View {
    @State private var textValue: String = "2400"
    
    var body: some View {
        VStack{
            
            Image(systemName: "chevron.backward")
                .padding(.trailing,350)
                .font(.system(size: 23,weight: .medium))
                .foregroundColor(.blue)
            
            Spacer()
            MainTitle()
            Spacer()
            SecondTitle(text: "Daily intake?")
            Spacer()
            mainly
            Spacer()
            Spacer()
            Buttona(inbutton: "Save")

        }
    }
    var mainly:some View{
        ZStack{
            Color(red: 212/255, green: 225/255, blue: 248/255).opacity(1)
                .frame(width: 358,height: 108)
                .cornerRadius(16)
            
            VStack{
                HStack{
                    TextField("Enter a number", text: $textValue)
                        .frame(width: 250,height: 60)
                        .background(Color.white)
                        .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255).opacity(1))
                        .cornerRadius(16)
                        .multilineTextAlignment(.center)
                        .keyboardType(.numberPad) // Set the keyboardType to numberPad
                    
                    Text("ML")
                }
            }
            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
            
        }.padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
        
    }
}

struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}
