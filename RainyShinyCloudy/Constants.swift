//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Michael Franks on 10/30/17.
//  Copyright © 2017 Popcorn Labs. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/"
let WEATHER_STR = "weather?"
let FORECAST_STR = "forecast?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "a5d579ea277ccae5b73e9d72df70d5a7"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(WEATHER_STR)\(LATITUDE)34.14\(LONGITUDE)-118.45\(APP_ID)\(API_KEY)"
let FORECAST_WEATHER_URL = "\(BASE_URL)\(FORECAST_STR)\(LATITUDE)34.14\(LONGITUDE)-118.45\(APP_ID)\(API_KEY)"
