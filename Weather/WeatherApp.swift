//
//  WeatherApp.swift
//  Weather
//
//  Created by Pavel Gribachev on 18.03.2024.
//

import SwiftUI

@main
struct WeatherApp: App {
    @StateObject private var weekday = WeekDayViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(weekday)
    }
}
