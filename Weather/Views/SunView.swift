//
//  SunView.swift
//  Weather
//
//  Created by Pavel Gribachev on 19.03.2024.
//

import SwiftUI

struct SunView: View {
    var body: some View {
        GeometryReader { geometry in
            
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            ZStack {
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(
                                colors: [.clear, .orange]
                            ),
                            center: .center,
                            startRadius: size * 0.5,
                            endRadius: size * 0.20
                        )
                )
                
                Circle()
                    .fill(
                        RadialGradient(
                            gradient: Gradient(
                                colors: [.clear, .orange]
                            ),
                            center: .center,
                            startRadius: size * 0.25,
                            endRadius: size * 0.10
                        )
                    )
                    .frame(width: size / 2, height: height / 2)
            }
        }
    }
}

#Preview {
    SunView()
        .frame(width: 100, height: 100)
}
