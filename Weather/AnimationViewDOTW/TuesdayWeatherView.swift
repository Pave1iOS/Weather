//
//  TuesdayWeatherView.swift
//  Weather
//
//  Created by Pavel Gribachev on 19.03.2024.
//

import SwiftUI

struct TuesdayWeatherView: View {
    @State private var start = false
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                Text("Вторник, солнечно")
                    .font(.system(size: 20, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(red: 165/255, green: 207/255, blue: 255/255))
                    .padding(.top, 50)
                
                Text("+26")
                    .font(.system(size: 50, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(red: 61/255, green: 145/255, blue: 235/255))
                    .padding(.top, -10)
                
                Spacer()
                
                ZStack {
                    CloudView()
                        .frame(width: 150, height: 100)
                        .offset(x: 110, y: 110)
                        .animation(
                            .linear(duration: 10).repeatForever(),
                            value: start
                        )
                        .offset(x: start
                                ? UIScreen.main.bounds.width - 380
                                : UIScreen.main.bounds.width - 500)
                    
                    CloudView()
                        .frame(width: 150, height: 100)
                        .offset(x: -110, y: -110)
                        .animation(
                            .linear(duration: 10).repeatForever().delay(2),
                            value: start
                        )
                        .offset(x: start
                                ? UIScreen.main.bounds.width - 410
                                : UIScreen.main.bounds.width - 300)
                    
                    
                    Circle()
                        .fill(
                            RadialGradient(
                                gradient: Gradient(
                                    colors: [
                                        Color(
                                            red: 255/255,
                                            green: 149/255,
                                            blue: 0/255
                                        ),.clear
                                        
                                    ]
                                ),
                                center: .center,
                                startRadius: 190,
                                endRadius: 60
                            )
                        )
                        .frame(width: 150)
                    
                    Circle()
                        .fill(
                            RadialGradient(
                                gradient: Gradient(
                                    colors: [.clear,
                                        Color(
                                            red: 255/255,
                                            green: 128/255,
                                            blue: 0/255
                                        )
                                        
                                    ]
                                ),
                                center: .center,
                                startRadius: 50,
                                endRadius: 20
                            )
                        )
                        .frame(width: 100)
                        .scaleEffect(start ? 0.9 : 1.6)
                        .animation(.easeInOut(duration: 2).repeatForever(), value: start)
                    
                    RaySunshineView(color: Color(red: 244/255, green: 175/255, blue: 50/255))
                        .rotationEffect(.degrees(start ? 0 : 720))
                        .animation(
                            .linear(duration: 20).repeatForever(autoreverses: false),
                            value: start
                        )
                }.onAppear() {
                    start.toggle()
                }
                Spacer()
                NextDayButton()
            }
        }
    }
}

#Preview {
    TuesdayWeatherView()
}
