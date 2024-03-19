//
//  ContentView.swift
//  Weather
//
//  Created by Pavel Gribachev on 18.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var start = false
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                
                ZStack {
                    SunView()
                        .offset(
                            y: start
                            ? geometry.size.width - 250
                            : geometry.size.width - 280
                        )
                    
                    CloudView()
                        .offset(
                            x: start
                            ? geometry.size.width - 260
                            : geometry.size.width - 280
                        )
                }
                .frame(width: 300, height: 200)
                
                
                HStack(spacing: 80) {
                    DropView()
                        .frame(width: 50, height: 50)
                    
                    DropView()
                        .frame(width: 50, height: 50)
                }
                DropView()
                    .frame(width: 50, height: 50)
            }
            .animation(.easeInOut, value: start)
            
        }
        
    }
    
}

#Preview {
    ContentView()
        .frame(width: 241, height: 147)
}
