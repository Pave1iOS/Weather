//
//  RootView.swift
//  Weather
//
//  Created by Pavel Gribachev on 20.03.2024.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var weekDay: WeekDayViewModel
    
    var body: some View {
        Group {
            if weekDay.weather.weekDay == 1 {
                MondayWeatherView()
            } else if weekDay.weather.weekDay == 2 {
                TuesdayWeatherView()
            } else if weekDay.weather.weekDay == 3 {
                WednesdayWeatherView()
            } else if weekDay.weather.weekDay == 4 {
                ThursdayWeatherView()
            }
        }
    }
    
    
}
