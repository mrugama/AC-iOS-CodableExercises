//
//  BillboardDetailViewController.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class BillboardDetailViewController: UIViewController {
    
    var song: Billboard?
    
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var spotifyId: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSongDetail()
    }

    func loadSongDetail() {
//        guard let spotifyId = song?.spotify_id, let songId = song?.song_id, let songName = song?.song_name, let artistId = song?.artist_id, let artistName = song?.display_artist else {
//            return
//        }
        let songId = song?.song_id ?? "Song id not found"
        let songName = song?.song_name ?? "Song name not found"
        let artistId = song?.artist_id ?? "Artist id not found"
        let artistName = song?.display_artist ?? "Artist Name not found"
        let spotifyId = song?.spotify_id ?? "Spotify id not found"
        self.songName.text = songId + " " + songName
        self.artistName.text = artistId + " " + artistName
        self.spotifyId.text = spotifyId
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
