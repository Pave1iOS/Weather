//
//  SunPathView.swift
//  Weather
//
//  Created by Pavel Gribachev on 19.03.2024.
//

import SwiftUI

struct LightningView: View {
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width // x
            let height = geometry.size.height // y
            
            Path { path in
                // puff (start)
                path.move(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.11),
                        y: multiply(sideValue: height, toCoefficient: 0.35)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.95),
                        y: multiply(sideValue: height, toCoefficient: 0.35)
                    )
                )
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.95),
                        y: multiply(sideValue: height, toCoefficient: 0.60)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.98),
                        y: multiply(sideValue: height, toCoefficient: 0.50)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.04),
                        y: multiply(sideValue: height, toCoefficient: 0.60)
                    )
                )
                
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.04),
                        y: multiply(sideValue: height, toCoefficient: 0.35)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.01),
                        y: multiply(sideValue: height, toCoefficient: 0.50)
                    )
                )
                
            }
        }
        .frame(width: 100, height: 20)
    }
    
    private func multiply(sideValue: Double, toCoefficient point: Double) -> Double {
        return sideValue * point
    }
    
}

#Preview {
    LightningView()
}
