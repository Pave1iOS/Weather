//
//  ThursdayWeatherView.swift
//  Weather
//
//  Created by Pavel Gribachev on 20.03.2024.
//

import SwiftUI

struct ThursdayWeatherView: View {
    @State private var start = false

    var body: some View {
        
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            VStack {
                
                Text("Четверг, гроза")
                    .font(.system(size: 20, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(red: 165/255, green: 207/255, blue: 255/255))
                    .padding(.top, 50)
                
                Text("+8")
                    .font(.system(size: 50, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundStyle(Color(red: 61/255, green: 145/255, blue: 235/255))
                    .padding(.top, -10)
                
                Spacer()
                
                ZStack {
                    CloudView()
                        .frame(width: 200, height: 130)
                        .offset(x: -120, y: 50)
                        .scaleEffect(start ? 1 : 1.1)
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever().delay(2),
                            value: start
                        )
                    
                    CloudView()
                        .frame(width: 300, height: 200)
                        .offset(x: 70, y: 50)
                        .scaleEffect(start ? 1 : 1.1)
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever(),
                            value: start
                        )
                    
                    CloudView()
                        .frame(width: 200, height: 130)
                        .offset(x: -20, y: 0)
                        .scaleEffect(start ? 1 : 1.1)
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever().delay(1),
                            value: start
                        )
                    
                    VStack {
                        HStack(spacing: 20) {
                            LightningView()
                                .frame(width: 100, height: 150)
                                .offset(x: 35, y: 290)
                                .rotationEffect(.degrees(15))
                                .animation(
                                    .easeInOut(duration: 2.0).repeatForever().delay(1),
                                    value: start
                                )
                                .offset(y: start
                                        ? UIScreen.main.bounds.width - 450
                                        : UIScreen.main.bounds.width - 470)
                            
                            LightningView()
                                .frame(width: 100, height: 150)
                                .offset(x: 35, y: 220)
                                .rotationEffect(.degrees(15))
                                .animation(
                                    .easeInOut(duration: 2.0).repeatForever(),
                                    value: start
                                )
                                .offset(y: start
                                        ? UIScreen.main.bounds.width - 450
                                        : UIScreen.main.bounds.width - 470)
                            
                            LightningView()
                                .frame(width: 100, height: 150)
                                .offset(x: 50, y: 290)
                                .rotationEffect(.degrees(15))
                                .animation(
                                    .easeInOut(duration: 2.0).repeatForever().delay(2),
                                    value: start
                                )
                                .offset(y: start
                                        ? UIScreen.main.bounds.width - 450
                                        : UIScreen.main.bounds.width - 470)
                        }
                        
                        HStack(spacing: 50) {
                            
                            DropView().frame(width: 50, height: 50)
                                .animation(
                                    .easeInOut(duration: 2.0).repeatForever(),
                                    value: start
                                )
                                .offset(x: 70, y: 150)
                                .offset(y: start
                                        ? UIScreen.main.bounds.width - 400
                                        : UIScreen.main.bounds.width - 470)
                            
                            DropView().frame(width: 50, height: 50)
                                .animation(
                                    .easeInOut(duration: 2.0).repeatForever().delay(1),
                                    value: start
                                )
                                .offset(x: -120, y: 250)
                                .offset(y: start
                                        ? UIScreen.main.bounds.width - 400
                                        : UIScreen.main.bounds.width - 470)
                            
                            HStack {
                                DropView().frame(width: 50, height: 50)
                                    .animation(
                                        .easeInOut(duration: 2.0).repeatForever().delay(2),
                                        value: start
                                    )
                                    .offset(x: -70, y: 250)
                                    .offset(y: start
                                            ? UIScreen.main.bounds.width - 400
                                            : UIScreen.main.bounds.width - 470)
                            }
                            
                        }
                    }
                    
                }.padding(.top, -200)
                
                Spacer()   
                NextDayButton()
            }
            
            
        }
        .onAppear(){
            start.toggle()
        }
    }
}

#Preview {
    ThursdayWeatherView()
}
