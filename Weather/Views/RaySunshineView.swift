//
//  SingleSun.swift
//  Weather
//
//  Created by Pavel Gribachev on 20.03.2024.
//

import SwiftUI

struct RaySunshineView: View {
    let color: Color
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                 .frame(width: 100, height: 40)
                 .rotationEffect(.degrees(30))
                 .offset(x: 120, y: 65)
                 .foregroundStyle(color)
            
            RoundedRectangle(cornerRadius: 20)
                 .frame(width: 100, height: 40)
                 .rotationEffect(.degrees(87))
                 .offset(x: 10,y: 135)
                 .foregroundStyle(color)
            
            RoundedRectangle(cornerRadius: 20)
                 .frame(width: 100, height: 40)
                 .rotationEffect(.degrees(30))
                 .offset(x: -120, y: -65)
                 .foregroundStyle(color)
            
            RoundedRectangle(cornerRadius: 20)
                 .frame(width: 100, height: 40)
                 .rotationEffect(.degrees(87))
                 .offset(x: -10,y: -135)
                 .foregroundStyle(color)
            
            RoundedRectangle(cornerRadius: 20)
                 .frame(width: 100, height: 40)
                 .rotationEffect(.degrees(140))
                 .offset(x: -110, y: 80)
                 .foregroundStyle(color)
            
            RoundedRectangle(cornerRadius: 20)
                 .frame(width: 100, height: 40)
                 .rotationEffect(.degrees(140))
                 .offset(x: 110, y: -80)
                 .foregroundStyle(color)
        }
        
        
    }
}

#Preview {
    RaySunshineView(color: .gray)
}
