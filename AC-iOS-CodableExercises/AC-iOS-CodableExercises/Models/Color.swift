//
//  Color.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

struct Color: Codable {
    let name: nameUnwrapped
    let rgb: rgbUnwrapped
    let image: imageUnwrapped
}

struct rgbUnwrapped: Codable {
    let fraction: fractionUnwrapped
    let r: Double
    let g: Double
    let b: Double
    let value: String
}

struct nameUnwrapped: Codable {
    let value: String
}

struct fractionUnwrapped: Codable {
    let r: Double
    let g: Double
    let b: Double
}

struct imageUnwrapped: Codable {
    let bare: String
    let named: String
}
