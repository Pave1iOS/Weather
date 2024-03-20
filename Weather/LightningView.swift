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
                path.move(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.81),
                        y: multiply(sideValue: height, toCoefficient: 0.05)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.61),
                        y: multiply(sideValue: height, toCoefficient: 0.33)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.69),
                        y: multiply(sideValue: height, toCoefficient: 0.31)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.53),
                        y: multiply(sideValue: height, toCoefficient: 0.54)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.63),
                        y: multiply(sideValue: height, toCoefficient: 0.51)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.17),
                        y: multiply(sideValue: height, toCoefficient: 0.93)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.33),
                        y: multiply(sideValue: height, toCoefficient: 0.63)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.25),
                        y: multiply(sideValue: height, toCoefficient: 0.65)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.35),
                        y: multiply(sideValue: height, toCoefficient: 0.44)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.26),
                        y: multiply(sideValue: height, toCoefficient: 0.46)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.42),
                        y: multiply(sideValue: height, toCoefficient: 0.14)
                    )
                )
                
                path.closeSubpath()
                
            }
            .foregroundStyle(.white)
            
            // lightning
            Path { path in
                path.move(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.81),
                        y: multiply(sideValue: height, toCoefficient: 0.05)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.61),
                        y: multiply(sideValue: height, toCoefficient: 0.33)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.69),
                        y: multiply(sideValue: height, toCoefficient: 0.31)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.53),
                        y: multiply(sideValue: height, toCoefficient: 0.54)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.63),
                        y: multiply(sideValue: height, toCoefficient: 0.51)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.17),
                        y: multiply(sideValue: height, toCoefficient: 0.93)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.33),
                        y: multiply(sideValue: height, toCoefficient: 0.63)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.25),
                        y: multiply(sideValue: height, toCoefficient: 0.65)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.35),
                        y: multiply(sideValue: height, toCoefficient: 0.44)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.26),
                        y: multiply(sideValue: height, toCoefficient: 0.46)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.42),
                        y: multiply(sideValue: height, toCoefficient: 0.14)
                    )
                )
                
                path.closeSubpath()
                
            }
            .offset(x: 2)
            .foregroundStyle(
                Color(
                    red: 248/255,
                    green: 201/255,
                    blue: 27/255
                )
            )
            // Lightning - stroke
            Path { path in
                path.move(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.81),
                        y: multiply(sideValue: height, toCoefficient: 0.05)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.61),
                        y: multiply(sideValue: height, toCoefficient: 0.33)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.69),
                        y: multiply(sideValue: height, toCoefficient: 0.31)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.53),
                        y: multiply(sideValue: height, toCoefficient: 0.54)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.63),
                        y: multiply(sideValue: height, toCoefficient: 0.51)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.17),
                        y: multiply(sideValue: height, toCoefficient: 0.93)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.33),
                        y: multiply(sideValue: height, toCoefficient: 0.63)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.25),
                        y: multiply(sideValue: height, toCoefficient: 0.65)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.35),
                        y: multiply(sideValue: height, toCoefficient: 0.44)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.26),
                        y: multiply(sideValue: height, toCoefficient: 0.46)
                    )
                )
                
                path.addLine(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.42),
                        y: multiply(sideValue: height, toCoefficient: 0.14)
                    )
                )
                
                path.closeSubpath()
                
            }
            .stroke(lineWidth: 1)
            .foregroundStyle(.yellow)
        }
    }
    
    private func multiply(sideValue: Double, toCoefficient point: Double) -> Double {
        return sideValue * point
    }
    
}

#Preview {
    LightningView()
}
