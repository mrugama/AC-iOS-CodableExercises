//
//  Weather.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

struct Weather: Codable {
    let coord: coordUnwrapped
    let weather: [WeatherUnwrapped]
    let base: String
    let main: MainUnwrapped
    let wind: WindUnwrapped
    let clouds: CloudUnwrapped
    let dt: Int
    let sys: SysUnwrapped
    let id: Int
    let name: String
    let cod: Int
}

struct coordUnwrapped: Codable {
    let lon: Double
    let lat: Double
}

struct WeatherUnwrapped: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct MainUnwrapped: Codable {
    let temp: Double
    let pressure: Double
    let humidity: Int
    let temp_min: Double
    let temp_max: Double
    let sea_level: Double
    let grnd_level: Double
}

struct WindUnwrapped: Codable {
    let speed: Double
    let deg: Int
}

struct CloudUnwrapped: Codable {
    let all: Int
}

struct SysUnwrapped: Codable {
    let message: Double
    let country: String
    let sunrise: Int
    let sunset: Int
}

