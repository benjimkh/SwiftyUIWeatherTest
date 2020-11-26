//
//  WeatherCard.swift
//  SwiftyUITest
//
//  Created by Benyamin Mokhtarpour on 20/01/20.
//  Copyright © 2020 BenyaminMokhtarpour. All rights reserved.
//

import SwiftUI

struct WeatherCard: View {
    var weather: Weather
    
    var body: some View {
        VStack {
            HStack {
                Image(weather.weatherState).resizable().frame(width: 50, height: 50)
                Text(UserDefaults.city).font(.title)
            }
            
            Spacer().frame(height: 40)
            
            Text("\(weather.theTemp)º")
                .font(.system(size: 90))
                .accessibility(identifier: "weather")
            
            Spacer().frame(height: 40)
            
            HStack {
                VStack {
                    Text("Min")
                    Text("\(weather.minTemp)º")
                }
                Divider().frame(height: 50).padding()
                 VStack {
                   Text("Max")
                    Text("\(weather.maxTemp)º")
               }
                Divider().frame(height: 50).padding()
                VStack {
                   Text("Worst")
                    Text("\(weather.humidity)º")
               }
            }.frame(height: 80)
        }
    }
}

struct WeatherCard_Previews: PreviewProvider {
    static var previews: some View {
        WeatherCard(weather: Weather.getDefault())
    }
}
