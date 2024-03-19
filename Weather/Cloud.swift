//
//  Cloud.swift
//  Weather
//
//  Created by Pavel Gribachev on 19.03.2024.
//

import SwiftUI

struct Cloud: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width // x
            let height = geometry.size.height // y
            let size = min(width, height)
                        
            Path { path in
                // puff (start)
                path.move(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.29),
                        y: multiply(sideValue: height, toCoefficient: 0.28)
                    )
                )
                // puff (1)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.48),
                        y: multiply(sideValue: height, toCoefficient: 0.08)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.35),
                        y: multiply(sideValue: height, toCoefficient: 0.08)
                    )
                )
                // 241, 147
                // puff (2)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.65),
                        y: multiply(sideValue: height, toCoefficient: 0.27)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.62),
                        y: multiply(sideValue: height, toCoefficient: 0.09)
                    )
                )
                
                // puff (3)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.84),
                        y: multiply(sideValue: height, toCoefficient: 0.47)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.81),
                        y: multiply(sideValue: height, toCoefficient: 0.30)
                    )
                )
                
                // puff (4)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.98),
                        y: multiply(sideValue: height, toCoefficient: 0.68)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.99),
                        y: multiply(sideValue: height, toCoefficient: 0.47)
                    )
                )
                
                // puff (5)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.79),
                        y: multiply(sideValue: height, toCoefficient: 0.80)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.97),
                        y: multiply(sideValue: height, toCoefficient: 0.87)
                    )
                )
                
                // puff (6)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.60),
                        y: multiply(sideValue: height, toCoefficient: 0.85)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.70),
                        y: multiply(sideValue: height, toCoefficient: 0.92)
                    )
                )
                
                // puff (7)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.37),
                        y: multiply(sideValue: height, toCoefficient: 0.85)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.49),
                        y: multiply(sideValue: height, toCoefficient: 0.96)
                    )
                )
                
                // puff (8)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.12),
                        y: multiply(sideValue: height, toCoefficient: 0.89)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.26),
                        y: multiply(sideValue: height, toCoefficient: 0.96)
                    )
                )
                                
                // puff (9)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.04),
                        y: multiply(sideValue: height, toCoefficient: 0.55)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.004),
                        y: multiply(sideValue: height, toCoefficient: 0.80)
                    )
                )
                
                // puff (10)
                path.addQuadCurve(
                    to: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.29),
                        y: multiply(sideValue: height, toCoefficient: 0.28)
                    ),
                    control: CGPoint(
                        x: multiply(sideValue: width, toCoefficient: 0.09),
                        y: multiply(sideValue: height, toCoefficient: 0.34)
                    )
                )
            }
        }
    }
    
    private func multiply(sideValue: Double, toCoefficient point: Double) -> Double {
        return sideValue * point
    }
}

#Preview {
    Cloud()
        .frame(width: 300, height: 200)
}
