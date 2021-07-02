//
//  WeatherView.swift
//  iosDashboard
//
//  Created by Juan Cruz Lepore on 22/06/2021.
//

import SwiftUI

struct WeatherView: View {
    
    let info: WeatherInfo
    var cur: Date = Date()
    
    var body: some View {
        VStack {
            Text(info.city)
            
//            Text(info.days[])
        }
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(info: WeatherInfo(city: "London", days: [
            SingleDayWeatherInfo(date: Date(), minTemp: 8, maxTemp: 18, wind: 12, sky: .CLEAR, rain: 14)
        ]))
    }
}

struct WeatherInfo {
    let city: String
    let days: [SingleDayWeatherInfo]
}

struct SingleDayWeatherInfo {
    let date: Date
    let minTemp: Int
    let maxTemp: Int
    let wind: Int?
    let sky: Sky
    let rain: Int
}

enum Sky {
    case CLEAR, CLOUDY, PARTIALLY_CLOUDY, RAINY
}
