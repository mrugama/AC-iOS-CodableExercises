//
//  WeatherDetailViewController.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class WeatherDetailViewController: UIViewController {

    var weatherDetail: Weather?
    
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var weather: UILabel!
    @IBOutlet weak var wind: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadLabels()
    }
    
    func loadLabels() {
        let country = weatherDetail?.name ?? "Country not found"
        let weather = weatherDetail?.weather[0].description
        let wind = "Speed wind: " + (weatherDetail?.wind.speed.description)!
        self.country.text = country
        self.weather.text = weather
        self.wind.text = wind
    }
    

}
