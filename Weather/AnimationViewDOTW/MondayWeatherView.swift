//
//  MondayWeather.swift
//  Weather
//
//  Created by Pavel Gribachev on 19.03.2024.
//

import SwiftUI

struct MondayWeatherView: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            ZStack {
                CloudView()
                    .frame(width: 200, height: 100)
                    .offset(x: 100, y: -60)
                
                CloudView()
                    .frame(width: 200, height: 100)
                    .offset(x: -100, y: -30)
                
                CloudView()
                    .frame(width: 100, height: 50)
                    .offset(x: 100, y: -20)
                
                CloudView()
                    .frame(width: 300, height: 200)
                    
            }
        }
    }
}

#Preview {
    MondayWeatherView()
}
