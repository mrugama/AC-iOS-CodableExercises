//
//  ColorViewController.swift
//  AC-iOS-CodableExercises
//
//  Created by C4Q on 11/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var colors: Color?
    
    @IBOutlet weak var colorTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorTableView.delegate = self
        self.colorTableView.dataSource = self
        loadColorData()
    }

    func loadColorData() {
        if let path = Bundle.main.path(forResource: "colorinfo", ofType: "json") {
            let myURL = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myURL) {
                let myDecoder = JSONDecoder()
                do {
                    let myColors = try myDecoder.decode(Color.self, from: data)
                    self.colors = myColors
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
        
        let cell = colorTableView.dequeueReusableCell(withIdentifier: "Color Cell", for: indexPath)
        cell.textLabel?.text = colors?.name.value
        guard let colors = colors else {
            return UITableViewCell()
        }
        let r = colors.rgb.fraction.r
        let g = colors.rgb.fraction.g
        let b = colors.rgb.fraction.b
        cell.detailTextLabel?.text = "R: \(r.description), G: \(g.description), B: \(b.description)"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
