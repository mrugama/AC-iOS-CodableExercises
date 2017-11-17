//
//  WeatherViewController.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var weather: Weather?
    
    @IBOutlet weak var weatherTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.weatherTableView.delegate = self
        self.weatherTableView.dataSource = self
        loadWeatherData()
    }

    func loadWeatherData() {
        if let path = Bundle.main.path(forResource: "weatherinfo", ofType: "json") {
            let myURL = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myURL) {
                let myDecoder = JSONDecoder()
                do {
                    let weather = try myDecoder.decode(Weather.self, from: data)
                    self.weather = weather
                } catch let error {
                    print("Unexpected format:", error)
                }
            }
        }
    }
    
    //MARK: - TableView Datasource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let weather = self.weather[indexPath.row]
        let cell = weatherTableView.dequeueReusableCell(withIdentifier: "Weather Cell", for: indexPath)
        cell.textLabel?.text = self.weather!.weather.first!.description
        cell.detailTextLabel?.text = "Temperature: " + self.weather!.main.temp.description
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let weatherSender = segue.destination as? WeatherDetailViewController
        weatherSender!.weatherDetail = self.weather!
    }
}
