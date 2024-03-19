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
            
            let comWidth = size
            
            Path { path in
                // puff (start)
                path.move(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 0.29),
                        y: calculate(side: height, toPoint: 0.28)
                    )
                )
                // puff (1)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.48,
                        y: height * 0.08
                    ),
                    control: CGPoint(
                        x: width * 0.35,
                        y: height * 0.08
                    )
                )
                // 241, 147
                // puff (2)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.65,
                        y: height * 0.27
                    ),
                    control: CGPoint(
                        x: width * 0.62,
                        y: height * 0.09
                    )
                )
                
                // puff (3)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.84,
                        y: height * 0.47
                    ),
                    control: CGPoint(
                        x: width * 0.81,
                        y: height * 0.30
                    )
                )
                
                // puff (4)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.98,
                        y: height * 0.68
                    ),
                    control: CGPoint(
                        x: width * 0.99,
                        y: height * 0.47
                    )
                )
                
                // puff (5)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.79,
                        y: height * 0.80
                    ),
                    control: CGPoint(
                        x: width * 0.97,
                        y: height * 0.87
                    )
                )
                
                // puff (6)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.60,
                        y: height * 0.85
                    ),
                    control: CGPoint(
                        x: width * 0.70,
                        y: height * 0.92
                    )
                )
                
                // puff (7)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.37,
                        y: height * 0.85
                    ),
                    control: CGPoint(
                        x: width * 0.49,
                        y: height * 0.96
                    )
                )
                
                // puff (8)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.12,
                        y: height * 0.89
                    ),
                    control: CGPoint(
                        x: width * 0.26,
                        y: height * 0.96
                    )
                )
                                
                // puff (9)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.04,
                        y: height * 0.55
                    ),
                    control: CGPoint(
                        x: width * 0.004,
                        y: height * 0.80
                    )
                )
                
                // puff (10)
                path.addQuadCurve(
                    to: CGPoint(
                        x: width * 0.29,
                        y: height * 0.28
                    ),
                    control: CGPoint(
                        x: width * 0.09,
                        y: height * 0.34
                    )
                )
            }
        }
    }
    
    private func calculate(side: Double, toPoint point: Double) -> Double {
        return side * point
    }
}

#Preview {
    ContentView()
        .frame(width: 241, height: 147)
}
