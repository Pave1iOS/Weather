//
//  ContentView.swift
//  Weather
//
//  Created by Pavel Gribachev on 18.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            ZStack {
                SunView()
                    .offset(y: -20)
                CloudView()
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
        
    }
}

#Preview {
    ContentView()
        .frame(width: 241, height: 147)
}
