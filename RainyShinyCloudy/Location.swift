//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Michael Franks on 11/6/17.
//  Copyright © 2017 Popcorn Labs. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {
    }
    var latitude: Double!
    var longitude: Double!
}
