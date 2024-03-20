//
//  ContentView.swift
//  Weather
//
//  Created by Pavel Gribachev on 18.03.2024.
//

import SwiftUI

struct WednesdayWeatherView: View {
    @State private var start = false
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                Text("Среда, небольшой дождь")
                    .font(.system(size: 20, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(red: 165/255, green: 207/255, blue: 255/255))
                    .padding(.top, 50)
                
                Text("+20")
                    .font(.system(size: 50, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(red: 61/255, green: 145/255, blue: 235/255))
                    .padding(.top, -10)
                
                Spacer()
                
                ZStack {
                    
                    CloudView()
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever().delay(2),
                            value: start
                        )
                        .offset(x: 85, y: -60)
                        .offset(x: start
                                ? UIScreen.main.bounds.width - 390
                                : UIScreen.main.bounds.width - 410)
                        .frame(width: 150, height: 100)
                    
                    SunView()
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever(),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 480
                                : UIScreen.main.bounds.width - 450)
                    
                    CloudView()
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever(),
                            value: start
                        )
                        .offset(x: start
                                ? UIScreen.main.bounds.width - 390
                                : UIScreen.main.bounds.width - 410)
                }
                .frame(width: 300, height: 200)
                .padding(.top, -50)
                
                HStack(spacing: 50) {
                    DropView().frame(width: 50, height: 50)
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever().delay(2),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 370
                                : UIScreen.main.bounds.width - 410)
                    
                    DropView().frame(width: 50, height: 50)
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever().delay(2),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 370
                                : UIScreen.main.bounds.width - 410)
                }
                HStack(spacing: 50) {
                    DropView().frame(width: 50, height: 50)
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever(),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 400
                                : UIScreen.main.bounds.width - 470)
                    
                    DropView().frame(width: 50, height: 50)
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever(),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 400
                                : UIScreen.main.bounds.width - 470)
                    
                    DropView().frame(width: 50, height: 50)
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever(),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 400
                                : UIScreen.main.bounds.width - 470)
                }
                Spacer()
            }
        }        
        .onAppear() {
            start.toggle()
        }
    }
}

#Preview {
    WednesdayWeatherView()
}
