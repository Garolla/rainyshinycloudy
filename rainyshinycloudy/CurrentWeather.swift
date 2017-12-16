//
//  CurrentWeather.swift
//  rainyshinycloudy
//
//  Created by Emanuele Garolla on 14/08/2017.
//  Copyright © 2017 Emanuele Garolla. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    //private var _highTemp: String!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_GB")
        let currentDate = dateFormatter.string(from: Date())
        _date = "Today, \(currentDate)"
        
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType

    }

    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }

    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //Alamofire download
        print(CURRENT_WEATHER_URL)
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                }
                if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                    }
                }
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTemperature = main["temp"] as? Double {
                        //Farenheit
//                        let kelvinToFarenheitPreDivision = (currentTemperature * (9/5) - 459.67)
//                        let kelvinToFarenheit = Double(round(10*kelvinToFarenheitPreDivision/10))
                        
                        let kelvinToCelsius = currentTemperature - 273
                        self._currentTemp = kelvinToCelsius
                    }
                }
            }
            completed()
        }
    }
}
