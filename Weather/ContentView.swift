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
            
            Path { path in
                // puff (start)
                path.move(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 70),
                        y: calculate(side: height, toPoint: 42)
                    )
                )
                // puff (1)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 118),
                        y: calculate(side: height, toPoint: 12)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 86),
                        y: calculate(side: height, toPoint: 13)
                    )
                )
                
                // puff (2)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 159),
                        y: calculate(side: height, toPoint: 40)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 150),
                        y: calculate(side: height, toPoint: 14)
                    )
                )
                
                // puff (3)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 203),
                        y: calculate(side: height, toPoint: 70)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 196),
                        y: calculate(side: height, toPoint: 45)
                    )
                )
                
                // puff (4)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 238),
                        y: calculate(side: height, toPoint: 100)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 240),
                        y: calculate(side: height, toPoint: 70)
                    )
                )
                
                // puff (5)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 191),
                        y: calculate(side: height, toPoint: 119)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 236),
                        y: calculate(side: height, toPoint: 128)
                    )
                )
                
                // puff (6)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 145),
                        y: calculate(side: height, toPoint: 125)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 170),
                        y: calculate(side: height, toPoint: 136)
                    )
                )
                
                // puff (7)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 91),
                        y: calculate(side: height, toPoint: 125)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 119),
                        y: calculate(side: height, toPoint: 142)
                    )
                )
                
                // puff (8)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 31),
                        y: calculate(side: height, toPoint: 131)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 65),
                        y: calculate(side: height, toPoint: 142)
                    )
                )
                                
                // puff (9)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 12),
                        y: calculate(side: height, toPoint: 81)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 1),
                        y: calculate(side: height, toPoint: 119)
                    )
                )
                
                // puff (10)
                path.addQuadCurve(
                    to: CGPoint(
                        x: calculate(side: width, toPoint: 70),
                        y: calculate(side: height, toPoint: 42)
                    ),
                    control: CGPoint(
                        x: calculate(side: width, toPoint: 23),
                        y: calculate(side: height, toPoint: 50)
                    )
                )
            }
        }
        
    }
    
    private func calculate(side: Double, toPoint point: Double) -> Double {
        let intermediateResult = point / side
        return side * intermediateResult
    }
}

#Preview {
    ContentView()
        .frame(width: 300, height: 300)
}
