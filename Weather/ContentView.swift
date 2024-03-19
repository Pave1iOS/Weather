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
        ZStack {
            Color.white
            
            VStack {
                ZStack {
                    SunView()
                    CloudView()
                }
                .frame(width: 300, height: 200)
            
                HStack(spacing: 50) {
                    DropView().frame(width: 50, height: 50)
                    DropView().frame(width: 50, height: 50)
                }
                DropView().frame(width: 50, height: 50)
            }
            
        }
        .frame(width: 350, height: 700)
    }
}

#Preview {
    ContentView()
        .frame(width: 261, height: 147)
}
