//
//  FifthPage.swift
//  lecture-06
//
//  Created by Dimash Nsanbaev on 4/9/23.
//

import SwiftUI

struct SixthPage: View {
    @State private var tabIndex = 0

        var body: some View {
                VStack{
                    NavTitle(text: "HISTORY")
                    Spacer()
                    VStack(spacing: 50){
                        VStack{
                            Text("Today")
                                .frame(width: 390,alignment: .leading)
                                .padding(.leading,30)
                                .font(.system(size: 20,weight: .semibold))
                            mainly
                            
                        }
                        VStack{
                            Text("23.11.21")
                                .frame(width: 390,alignment: .leading)
                                .padding(.leading,30)
                                .font(.system(size: 20,weight: .semibold))
                            mainly
                        }
                    }
                    Spacer()

                }            
        }
    
    var mainly: some View {
        VStack(spacing: 20){
            HStack{
                Text("250 ml")
                Spacer()
                Text("12:13")
            }
            Divider()
            HStack{
                Text("200 ml")
                Spacer()
                Text("14:10")
            }
            Divider()

            HStack{
                Text("50 ml")
                Spacer()
                Text("15:13")
            }
            Divider()

            HStack{
                Text("300 ml")
                Spacer()
                Text("19:10")
            }
            Divider()
            
        }
        .padding(16)
    }
}


struct SixthPage_Previews: PreviewProvider {
    static var previews: some View {
        SixthPage()
    }
}
