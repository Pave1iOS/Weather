//
//  WeekDayViewModel.swift
//  Weather
//
//  Created by Pavel Gribachev on 20.03.2024.
//

import Foundation

final class WeekDayViewModel: ObservableObject {
    @Published var weather = Weather()
    
    func changeDay() {
        if weather.weekDay >= 4 {
            weather.weekDay = 0
        }
        weather.weekDay += 1
    }
}
