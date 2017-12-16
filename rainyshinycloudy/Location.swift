//
//  Location.swift
//  rainyshinycloudy
//
//  Created by Emanuele Garolla on 16/08/2017.
//  Copyright © 2017 Emanuele Garolla. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!

}
