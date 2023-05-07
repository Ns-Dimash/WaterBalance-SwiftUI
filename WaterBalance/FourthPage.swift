////
////  FourthPage.swift
////  lecture-06
////
////  Created by Dimash Nsanbaev on 4/9/23.
////
//
//import SwiftUI
//
//struct FourthPage: View {
//    @State private var selectedTab = 0
//    @State private var changeText = false
//    @Binding var textValue:String
//
//
//    var body: some View {
//        TabView(selection: $selectedTab){
//            VStack{
//                NavTitle(text: "Water Balance")
//                mainly
//                Spacer()
//                centerTitle
//                Spacer()
//                Button(action: {
//                    changeText = true
//                }) {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 16)
//                            .fill(Color(red: 24/255, green: 104/255, blue: 253/255).opacity(1))
//                            .frame(width: 358,height: 60)
//                        Text("Add")
//                            .foregroundColor(.white)
//                            .font(.system(size: 22, weight: .semibold))
//                    }
//                }
//                Spacer()
//                
//            }
//            .tabItem {
//                if selectedTab == 0 {
//                    Label("Main", image: "mainHome")
//                } else {
//                    Label("Main", image: "grayMain")
//                }
//            }
//            .tag(0)
//            
//            SeventhPage()
//                .tabItem {
//                    if selectedTab == 1 {
//                        Label("Settings", image: "BlueSetting")
//                    } else {
//                        Label("Settings", image: "mainSettings")
//                    }
//                }
//                .tag(1)
//            
//            SixthPage()
//                .tabItem {
//                    if selectedTab == 2 {
//                        Label("History", image: "blueHist")
//                    } else {
//                        Label("History", image: "mainHistory")
//                    }
//                }
//                .tag(2)
//        }.accentColor(.blue)
//        
//    }
//    
//    var mainly:some View{
//        //        ZStack{
//        //            Color.clear
//        //            .frame(width: 358,height: 332)
//        //
//        //            VStack{
//        //                ZStack{
//        //                    Circle()
//        //                        .stroke(
//        //                            Color.white,
//        //                            lineWidth: 6
//        //                        )
//        //                        .frame(width: 180)
//        //                    VStack(spacing: 10){
//        //                        Text("0 %")
//        //                            .font(.system(size: 36,weight: .bold))
//        //                        Text("0 out of 2,4 L")
//        //                            .font(.system(size: 16,weight: .medium))
//        //                    }
//        //
//        //                }
//        //            }.padding(.bottom,60)
//        //
//        //            Text(Date.now, style: .date)
//        //                .padding(.top,250)
//        //        }
//        //        .background(
//        //            LinearGradient(
//        //                gradient: Gradient(colors: [Color(red: 212/255, green: 225/255, blue: 248/255).opacity(1), .white]),
//        //                startPoint: .top,
//        //                endPoint: .bottom))
//        //        .cornerRadius(16)
//        firstView(textValue: $textvalue)
//        
//    }
//    var centerTitle: some View{
//        Text(changeText == true ? "Great Job!" : "Add your first drink for today")
//            .font(.system(size: 36, weight: .semibold))
//            .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255).opacity(1))
//            .kerning(-2)
//            .multilineTextAlignment(.center)
//    }
//}
//struct NavTitle:View{
//    var text:String
//    var body: some View{
//        Text(text)
//            .frame(width: 358,height: 40)
//            .textCase(.uppercase)
//            .font(.system(size: 17, weight: .black))
//            .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255).opacity(1))
//            .italic()
//    }
//}
//
//struct firstView: View {
//    @State private var percent = 78.0
//    @Binding var textValue:String
//
//    var body: some View {
//        
//        VStack {
//            ZStack {
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 212/255, green: 225/255, blue: 248/255), Color(red: 212/255, green: 225/255, blue: 248/255, opacity: 0)]), startPoint: .top, endPoint: .bottom))
//                    .frame(width: 358, height: 352)
//                VStack(spacing: 58) {
//                    CircleWaveView(textValue: $textValue, percent: Int(self.percent))
//                        .frame(width: 160,height: 160)
//                        .font(.system(size: 36,weight: .bold))
//                    Text(Date.now, style: .date)
//                }
//            }
//            
//        }
//        
//    }
//}
//
//struct Wave: Shape {
//    
//    var offset: Angle
//    var percent: Double
//    
//    var animatableData: Double {
//        get { offset.degrees }
//        set { offset = Angle(degrees: newValue) }
//    }
//    
//    func path(in rect: CGRect) -> Path {
//        var p = Path()
//        
//        // empirically determined values for wave to be seen
//        // at 0 and 100 percent
//        let lowfudge = 0.02
//        let highfudge = 0.98
//        
//        let newpercent = lowfudge + (highfudge - lowfudge) * percent
//        let waveHeight = 0.015 * rect.height
//        let yoffset = CGFloat(1 - newpercent) * (rect.height - 4 * waveHeight) + 2 * waveHeight
//        let startAngle = offset
//        let endAngle = offset + Angle(degrees: 360)
//        
//        p.move(to: CGPoint(x: 0, y: yoffset + waveHeight * CGFloat(sin(offset.radians))))
//        
//        for angle in stride(from: startAngle.degrees, through: endAngle.degrees, by: 5) {
//            let x = CGFloat((angle - startAngle.degrees) / 360) * rect.width
//            p.addLine(to: CGPoint(x: x, y: yoffset + waveHeight * CGFloat(sin(Angle(degrees: angle).radians))))
//        }
//        
//        p.addLine(to: CGPoint(x: rect.width, y: rect.height))
//        p.addLine(to: CGPoint(x: 0, y: rect.height))
//        p.closeSubpath()
//        
//        return p
//    }
//}
//
//struct CircleWaveView: View {
//    @Binding var textValue:String
//    @State private var waveOffset = Angle(degrees: 0)
//    let percent: Int
//    
//    var body: some View {
//        
//        GeometryReader { geo in
//            ZStack {
//                Circle()
//                    .stroke(Color.blue, lineWidth: 0.025 * min(geo.size.width, geo.size.height))
//                    .overlay(
//                        Wave(offset: Angle(degrees: self.waveOffset.degrees), percent: Double(percent)/100)
//                            .fill(Color(red: 116/255, green: 194/255, blue: 238/255, opacity: 1))
//                            .clipShape(Circle().scale(0.92))
//                    )
//                Text("\(self.percent)%")
//                    .foregroundColor(.black)
//                //                    .font(Font.system(size: 0.25 * min(geo.size.width, geo.size.height) ))
//                    .padding(.bottom,20)
//                    .font(.system(size: 36,weight: .bold))
//
//                Text("\(textValue) out of 2,4 L")
//                    .font(.system(size: 16,weight: .medium))
//                    .padding(.top,60)
//                    .foregroundColor(.white)
//            }
//        }
//        .aspectRatio(1, contentMode: .fit)
//        .onAppear {
//            withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
//                self.waveOffset = Angle(degrees: 360)
//            }
//        }
//    }
//}
//
//
//
//
//
//
//struct FourthPage_Previews: PreviewProvider {
//
//    static var previews: some View {
//        FourthPage()
//    }
//}
