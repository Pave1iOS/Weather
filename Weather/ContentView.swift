//
//  ContentView.swift
//  Weather
//
//  Created by Pavel Gribachev on 18.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width // x
            let height = geometry.size.height // y
            let size = min(width, height)
//            let middle = size / 2
            
            Path { path in
                // puff (green)
                path.move(to: CGPoint(x: calculate(side: width, toPoint: 65), y: calculate(side: height, toPoint: 35)))
                
                path.addQuadCurve(
                    to: CGPoint(x: calculate(side: width, toPoint: 162), y: calculate(side: height, toPoint: 35)),
                    control: CGPoint(x: calculate(side: width, toPoint: 117), y: .zero)
                )
                
                // puff (red)
                path.addQuadCurve(
                    to: CGPoint(x: calculate(side: width, toPoint: 207), y: calculate(side: height, toPoint: 66)),
                    control: CGPoint(x: calculate(side: width, toPoint: 193), y: calculate(side: height, toPoint: 43))
                )
                
                // puff (blue)
                path.addQuadCurve(
                    to: CGPoint(x: calculate(side: width, toPoint: 190), y: calculate(side: height, toPoint: 125)),
                    control: CGPoint(x: calculate(side: width, toPoint: 233), y: calculate(side: height, toPoint: 101))
                )
            }
        }
    }
    
    private func calculate(side: Double, toPoint point: Double) -> Double {
        let intermediateResult = side / point
        return side / intermediateResult
    }
}

#Preview {
    ContentView()
        .frame(width: 250, height: 150)
}
