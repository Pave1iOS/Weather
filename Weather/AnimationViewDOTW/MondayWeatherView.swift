//
//  MondayWeather.swift
//  Weather
//
//  Created by Pavel Gribachev on 19.03.2024.
//

import SwiftUI

struct MondayWeatherView: View {
    @State private var start = false
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                Text("Понедельник, облачно")
                    .font(.system(size: 20, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(red: 165/255, green: 207/255, blue: 255/255))
                    .padding(.top, 50)
                
                Text("+16")
                    .font(.system(size: 50, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(red: 61/255, green: 145/255, blue: 235/255))
                    .padding(.top, -10)
                
                Spacer()
                
                ZStack {
                    SunView()
                        .frame(width: 200, height: 200)
                        .offset(x:-50, y: -30)
                        .scaleEffect(start ? 1 : 0.8)
                        .animation(
                            .easeInOut(duration: 2).repeatForever(),
                            value: start
                        )
                    
                    CloudView()
                        .frame(width: 200, height: 100)
                        .offset(x: 100, y: -60)
                        .animation(
                            .easeInOut(duration: 2).repeatForever(),
                            value: start
                        )
                        .offset(x: start
                                ? UIScreen.main.bounds.width - 380
                                : UIScreen.main.bounds.width - 410)
                        
                    CloudView()
                        .frame(width: 200, height: 100)
                        .offset(x: -100, y: -30)
                        .animation(
                            .easeInOut(duration: 2).repeatForever().delay(2),
                            value: start
                        )
                        .offset(x: start
                                ? UIScreen.main.bounds.width - 380
                                : UIScreen.main.bounds.width - 410)
                    
                    CloudView()
                        .frame(width: 100, height: 50)
                        .offset(x: 100, y: -20)
                        .animation(.easeInOut(duration: 2).repeatForever().delay(1), value: start)
                        .offset(x: start
                                ? UIScreen.main.bounds.width - 390
                                : UIScreen.main.bounds.width - 350)
                    
                    CloudView()
                        .frame(width: 300, height: 200)
                        .scaleEffect(start ? 1.1 : 0.9)
                        .animation(.easeInOut(duration: 2).repeatForever(),value: start)
                }
                Spacer()
            }
        }.onAppear() {
            start.toggle()
        }
    }
}

#Preview {
    MondayWeatherView()
}
