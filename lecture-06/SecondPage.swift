//
//  SecondPage.swift
//  lecture-06
//
//  Created by Dimash Nsanbaev on 4/9/23.
//

import SwiftUI

struct SecondPage: View {
    var body: some View {
        VStack{
            Image(systemName: "chevron.backward")
                .padding(.trailing,350)
                .font(.system(size: 23,weight: .medium))
                .foregroundColor(.blue)
                
            Spacer()
            MainTitle()
            Spacer()
            SecondTitle(text: "Remind me each")
            Spacer()
            mainly
            Spacer()
            Spacer()
            Buttona(inbutton: "Next")

            
        }
    }
    var mainly:some View{
        ZStack{
            Color(red: 212/255, green: 225/255, blue: 248/255).opacity(1)
                .frame(width: 358,height: 330)
                .cornerRadius(16)
            
            VStack(spacing: 14){
                HStack{
                    VStack{
                        Text("15 minutes")
                            .font(.system(size: 16,weight: .semibold))
                    }
                    .frame(width: 150,height: 60)
                    .background(Color.white)
                    .cornerRadius(16)
                    
                    VStack{
                        Text("30 minutes")
                            .font(.system(size: 16,weight: .semibold))
                        
                    }.frame(width: 150,height: 60)
                        .background(Color.white)
                        .cornerRadius(16)
                    
                }
                
                HStack{
                    VStack{
                        Text("45 minutes")
                            .font(.system(size: 16,weight: .semibold))
                        
                    }
                    .frame(width: 150,height: 60)
                    .background(Color.white)
                    .cornerRadius(16)
                    
                    VStack{
                        Text("1 hour")
                            .font(.system(size: 16,weight: .semibold))
                        
                    }.frame(width: 150,height: 60)
                        .background(Color.white)
                        .cornerRadius(16)
                    
                }
                
                HStack{
                    VStack{
                        Text("1,5 hours")
                            .font(.system(size: 16,weight: .semibold))
                        
                    }
                    .frame(width: 150,height: 60)
                    .background(Color.white)
                    .cornerRadius(16)
                    
                    VStack{
                        Text("2 hours")
                            .font(.system(size: 16,weight: .semibold))
                        
                    }.frame(width: 150,height: 60)
                        .background(Color.white)
                        .cornerRadius(16)
                    
                }
                HStack{
                    VStack{
                        Text("3 hours")
                            .font(.system(size: 16,weight: .semibold))
                        
                    }
                    .frame(width: 150,height: 60)
                    .background(Color.white)
                    .cornerRadius(16)
                    
                    VStack{
                        Text("4 hours")
                            .font(.system(size: 16,weight: .semibold))
                        
                    }.frame(width: 150,height: 60)
                        .background(Color.white)
                        .cornerRadius(16)
                    
                }
            }.padding(EdgeInsets(top: 24, leading: 19, bottom: 24, trailing: 19))
        }
    }
}


struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
