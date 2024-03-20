//
//  DropView.swift
//  Weather
//
//  Created by Pavel Gribachev on 19.03.2024.
//

import SwiftUI

struct DropView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width // x
            let height = geometry.size.height // y
            
            ZStack {
                Path { path in
                    path.move(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.25),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        )
                    )
                    
                    // drop (1)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.44),
                            y: multiply(sideValue: height, toCoefficient: 0.09)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.31),
                            y: multiply(sideValue: height, toCoefficient: 0.22)
                        )
                    )
                    
                    // drop (2)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.54),
                            y: multiply(sideValue: height, toCoefficient: 0.09)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.49),
                            y: multiply(sideValue: height, toCoefficient: 0.04)
                        )
                    )
                    
                    // drop (3)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.72),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.66),
                            y: multiply(sideValue: height, toCoefficient: 0.25)
                        )
                    )
                    
                    // drop (4)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.6),
                            y: multiply(sideValue: height, toCoefficient: 0.87)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.79),
                            y: multiply(sideValue: height, toCoefficient: 0.7)
                        )
                    )
                    
                    // drop (5)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.4),
                            y: multiply(sideValue: height, toCoefficient: 0.9)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.5),
                            y: multiply(sideValue: height, toCoefficient: 0.97)
                        )
                    )
                    
                    // drop (6)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.25),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.19),
                            y: multiply(sideValue: height, toCoefficient: 0.72)
                        )
                    )

                }
                .foregroundStyle(.white)
                .offset(x: -2, y: -2)
                
                Path { path in
                    path.move(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.25),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        )
                    )
                    
                    // drop (1)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.44),
                            y: multiply(sideValue: height, toCoefficient: 0.09)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.31),
                            y: multiply(sideValue: height, toCoefficient: 0.22)
                        )
                    )
                    
                    // drop (2)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.54),
                            y: multiply(sideValue: height, toCoefficient: 0.09)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.49),
                            y: multiply(sideValue: height, toCoefficient: 0.04)
                        )
                    )
                    
                    // drop (3)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.72),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.66),
                            y: multiply(sideValue: height, toCoefficient: 0.25)
                        )
                    )
                    
                    // drop (4)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.6),
                            y: multiply(sideValue: height, toCoefficient: 0.87)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.79),
                            y: multiply(sideValue: height, toCoefficient: 0.7)
                        )
                    )
                    
                    // drop (5)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.4),
                            y: multiply(sideValue: height, toCoefficient: 0.9)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.5),
                            y: multiply(sideValue: height, toCoefficient: 0.97)
                        )
                    )
                    
                    // drop (6)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.25),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.19),
                            y: multiply(sideValue: height, toCoefficient: 0.72)
                        )
                    )

                }
                .foregroundStyle(
                    Color(red: 69/255, green: 156/255, blue: 206/255)
                )
                
                Path { path in
                    path.move(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.25),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        )
                    )
                    
                    // drop (1)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.44),
                            y: multiply(sideValue: height, toCoefficient: 0.09)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.31),
                            y: multiply(sideValue: height, toCoefficient: 0.22)
                        )
                    )
                    
                    // drop (2)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.54),
                            y: multiply(sideValue: height, toCoefficient: 0.09)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.49),
                            y: multiply(sideValue: height, toCoefficient: 0.04)
                        )
                    )
                    
                    // drop (3)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.72),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.66),
                            y: multiply(sideValue: height, toCoefficient: 0.25)
                        )
                    )
                    
                    // drop (4)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.6),
                            y: multiply(sideValue: height, toCoefficient: 0.87)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.79),
                            y: multiply(sideValue: height, toCoefficient: 0.7)
                        )
                    )
                    
                    // drop (5)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.4),
                            y: multiply(sideValue: height, toCoefficient: 0.9)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.5),
                            y: multiply(sideValue: height, toCoefficient: 0.97)
                        )
                    )
                    
                    // drop (6)
                    path.addQuadCurve(
                        to: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.25),
                            y: multiply(sideValue: height, toCoefficient: 0.47)
                        ),
                        control: CGPoint(
                            x: multiply(sideValue: width, toCoefficient: 0.19),
                            y: multiply(sideValue: height, toCoefficient: 0.72)
                        )
                    )

                }
                .stroke(
                    Color(red: 109/255, green: 170/255, blue: 205/255),
                    style: StrokeStyle(lineWidth: 1)
                )
                .offset(x: -2, y: -2)
            }
            .rotationEffect(.degrees(20))
            
        }
    }
    
    private func multiply(sideValue: Double, toCoefficient point: Double) -> Double {
        return sideValue * point
    }
}

#Preview {
    DropView()
        .frame(width: 100, height: 100)
}
