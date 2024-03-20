//
//  NextViewButton.swift
//  Weather
//
//  Created by Pavel Gribachev on 20.03.2024.
//

import SwiftUI

struct NextDayButton: View {
    @EnvironmentObject var weekDay: WeekDayViewModel
    
    var body: some View {
        ZStack {
            Button(action: {weekDay.changeDay()}) {
                ZStack {
                    RoundedRectangle(cornerRadius: 5.0)
                        .frame(width: 100, height: 40)
                        .foregroundStyle(.clear)
                        .overlay(
                            RoundedRectangle(
                                cornerRadius: 5.0
                            ).stroke(Color.gray, lineWidth: 2)
                        )
                        
                    
                    Text("next day")
                        .textCase(.uppercase)
                        .foregroundStyle(.gray)
                        .font(.system(size: 15, design: .rounded))
                        .fontWeight(.heavy)
                }
                .opacity(0.5)
                
            }
        }
    }
}

#Preview {
    NextDayButton()
}
