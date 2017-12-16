//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by Emanuele Garolla on 14/08/2017.
//  Copyright © 2017 Emanuele Garolla. All rights reserved.
//

import Foundation

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=111c44f4afa93ccdad8d0a15c18f8a53"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=111c44f4afa93ccdad8d0a15c18f8a53"
