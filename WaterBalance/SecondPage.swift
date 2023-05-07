//
//  SecondPage.swift
//  lecture-06
//
//  Created by Dimash Nsanbaev on 4/9/23.
//

import SwiftUI

struct SecondPage: View {
    @State var selectedTime:Int?
    
    var body: some View {
        VStack{
           
            Spacer()
            MainTitle()
            Spacer()
            SecondTitle(text: "Remind me each")
            Spacer()
            mainly
            Spacer()
            Spacer()
            Buttona(inbutton: "Next",destination:AnyView(ThirdPage()))

            
        }
        .navigationBarTitle("", displayMode: .inline)

    }
    var mainly:some View{
        ZStack{
            Color(red: 212/255, green: 225/255, blue: 248/255).opacity(1)
                .frame(width: 358,height: 330)
                .cornerRadius(16)
            
            VStack(spacing: 14){
                HStack{
                    Button(action: {
                        selectedTime = 1
                    }) {
                        VStack{
                            Text("15 minutes")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(selectedTime == 1 ? nil : .black)
                        }
                        .frame(width: 150,height: 60)
                        .background(Color.white)
                        .overlay(selectedTime == 1 ?
                            RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 24/255, green: 104/255, blue: 253/255), lineWidth: 3) : nil
                        )
                        .cornerRadius(16)
                    }
                    
                    
                    Button(action: {
                        selectedTime = 2
                    }) {
                        VStack{
                            Text("30 minutes")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(selectedTime == 2 ? nil : .black)
                        }
                        .frame(width: 150,height: 60)
                        .background(Color.white)
                        .overlay(selectedTime == 2 ?
                            RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 24/255, green: 104/255, blue: 253/255), lineWidth: 3) : nil
                        )
                        .cornerRadius(16)
                    }
                    
                }
                
                HStack{
                    Button(action: {
                        selectedTime = 3
                    }) {
                        VStack{
                            Text("45 minutes")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(selectedTime == 3 ? nil : .black)
                        }
                        .frame(width: 150,height: 60)
                        .background(Color.white)
                        .overlay(selectedTime == 3 ?
                            RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 24/255, green: 104/255, blue: 253/255), lineWidth: 3) : nil
                        )
                        .cornerRadius(16)
                    }
                    
                    Button(action: {
                        selectedTime = 4
                    }) {
                        VStack{
                            Text("1 hour")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(selectedTime == 4 ? nil : .black)
                        }
                        .frame(width: 150,height: 60)
                        .background(Color.white)
                        .overlay(selectedTime == 4 ?
                            RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 24/255, green: 104/255, blue: 253/255), lineWidth: 3) : nil
                        )
                        .cornerRadius(16)
                    }
                    
                }
                
                HStack{
                    Button(action: {
                        selectedTime = 5
                    }) {
                        VStack{
                            Text("1,5 hour")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(selectedTime == 5 ? nil : .black)
                        }
                        .frame(width: 150,height: 60)
                        .background(Color.white)
                        .overlay(selectedTime == 5 ?
                            RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 24/255, green: 104/255, blue: 253/255), lineWidth: 3) : nil
                        )
                        .cornerRadius(16)
                    }
                    
                    Button(action: {
                        selectedTime = 6
                    }) {
                        VStack{
                            Text("2 hour")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(selectedTime == 6 ? nil : .black)
                        }
                        .frame(width: 150,height: 60)
                        .background(Color.white)
                        .overlay(selectedTime == 6 ?
                            RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 24/255, green: 104/255, blue: 253/255), lineWidth: 3) : nil
                        )
                        .cornerRadius(16)
                    }
                    
                }
                HStack{
                    Button(action: {
                        selectedTime = 7
                    }) {
                        VStack{
                            Text("3 hour")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(selectedTime == 7 ? nil : .black)
                        }
                        .frame(width: 150,height: 60)
                        .background(Color.white)
                        .overlay(selectedTime == 7 ?
                            RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 24/255, green: 104/255, blue: 253/255), lineWidth: 3) : nil
                        )
                        .cornerRadius(16)
                    }
                    
                    Button(action: {
                        selectedTime = 8
                    }) {
                        VStack{
                            Text("4 hour")
                                .font(.system(size: 16,weight: .semibold))
                                .foregroundColor(selectedTime == 8 ? nil : .black)
                        }
                        .frame(width: 150,height: 60)
                        .background(Color.white)
                        .overlay(selectedTime == 8 ?
                            RoundedRectangle(cornerRadius: 16)
                            .stroke(Color(red: 24/255, green: 104/255, blue: 253/255), lineWidth: 3) : nil
                        )
                        .cornerRadius(16)
                    }
                    
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
