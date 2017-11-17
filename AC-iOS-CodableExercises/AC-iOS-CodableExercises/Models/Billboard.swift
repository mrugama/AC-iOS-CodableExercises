//
//  Billboard.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

struct Billboard: Codable {
    let song_id: String
    let song_name: String
    let artist_id: String
    let display_artist: String
    let spotify_id: String?
}
