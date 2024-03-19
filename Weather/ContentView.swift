//
//  ContentView.swift
//  Weather
//
//  Created by Pavel Gribachev on 18.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var start = false
    
    var foreverAnimation: Animation {
        Animation.easeInOut(duration: 2.0)
            .repeatForever(autoreverses: true)
    }
    
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                ZStack {
                    SunView()
                        .animation(
                            .easeInOut(duration: 2.0).repeatForever(),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 410
                                : UIScreen.main.bounds.width - 440)
                    
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
            
                HStack(spacing: 50) {
                    DropView().frame(width: 50, height: 50)
                        .animation(
                            .easeInOut(duration: 1.5).repeatForever(),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 320
                                : UIScreen.main.bounds.width - 410)
                    
                    DropView().frame(width: 50, height: 50)
                        .animation(
                            .easeInOut(duration: 1.8).repeatForever(),
                            value: start
                        )
                        .offset(y: start
                                ? UIScreen.main.bounds.width - 320
                                : UIScreen.main.bounds.width - 410)
                }
                DropView().frame(width: 50, height: 50)
                    .animation(
                        .easeInOut(duration: 2.0).repeatForever(),
                        value: start
                    )
                    .offset(y: start
                            ? UIScreen.main.bounds.width - 320
                            : UIScreen.main.bounds.width - 470)
            }
            
        }
        .frame(width: 350, height: 700)
        .onAppear() {
            start.toggle()
        }
    }
}

#Preview {
    ContentView()
        .frame(width: 261, height: 147)
}
