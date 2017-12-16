//
//  WeatherCell.swift
//  rainyshinycloudy
//
//  Created by Emanuele Garolla on 14/08/2017.
//  Copyright © 2017 Emanuele Garolla. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLbl: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast){
        lowTemp.text = forecast.lowTemp
        highTemp.text = forecast.highTemp
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
        print("Type is : " + forecast.weatherType)
        dayLbl.text = forecast.date
    }
}
