//
//  WeatherVC.swift
//  RainyShinyCloudy
//
//  Created by Michael Franks on 10/16/17.
//  Copyright © 2017 Popcorn Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

