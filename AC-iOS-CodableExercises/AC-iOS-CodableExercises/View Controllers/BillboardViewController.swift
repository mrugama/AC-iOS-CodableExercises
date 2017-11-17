//
//  ViewController.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class BillboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var songs = [Billboard]()
    
    @IBOutlet weak var billboardTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billboardTableView.delegate = self
        self.billboardTableView.dataSource = self
        loadBillboardData()
    }

    func loadBillboardData() {
        if let path = Bundle.main.path(forResource: "billboardinfo", ofType: "json") {
            let myURL = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myURL) {
                let myDecoder = JSONDecoder()
                do {
                    let songs = try myDecoder.decode([Billboard].self, from: data)
                    self.songs = songs
                } catch let error {
                    print("Unexpected format:", error)
                }
            }
        }
    }
    
    //MARK: - TableView Datasource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let song = songs[indexPath.row]
        let cell = billboardTableView.dequeueReusableCell(withIdentifier: "Billboard Cell", for: indexPath)
        cell.textLabel?.text = song.song_name
        cell.detailTextLabel?.text = song.display_artist
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let songIndex = billboardTableView.indexPathForSelectedRow!.row
        let songSender = segue.destination as? BillboardDetailViewController
        songSender?.song = songs[songIndex]
    }
}

