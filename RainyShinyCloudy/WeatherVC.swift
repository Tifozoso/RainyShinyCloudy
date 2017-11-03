//
//  WeatherVC.swift
//  RainyShinyCloudy
//
//  Created by Michael Franks on 10/16/17.
//  Copyright © 2017 Popcorn Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather = CurrentWeather!
    var forecast: Forecast!
    var forecasts = [Forecast]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        forecast = Forecast()
        
        currentWeather.downloadWeatherDetails {
            self.updateMainUI()
        }
        
    }
    
    func downloadForecastData(completed: DownloadComplete) {
        //Downloading forecast weather data for TableView
        let forecastURL = URL(string: FORECAST_WEATHER_URL)!
        
        Alamofire.request(forecastURL).responseJSON { response in
        
            let result = response.result
        
            if let dict = result.value as? Dictionary<String, Any?> {
             
                if let list = dict["list"] as? [Dictionary<String, Any?>]
                
                for obj in list {
                    let forecast = Forecast(weatherDict: obj)
                    self.forecasts.append()
                }
                
            }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
            
        return cell
    }
    
    func updateMainUI() {
        
        dateLabel.text = currentWeather.date
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        currentWeatherTypeLabel.text = currentWeather.weatherType
        locationLabel.text = currentWeather.cityName
        currentWeatherIcon.image = UIImage(named: currentWeather.weatherType)
        
    }


    
}
