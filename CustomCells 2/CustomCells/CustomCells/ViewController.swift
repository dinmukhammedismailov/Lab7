//
//  ViewController.swift
//  CustomCells
//
//  Created by User on 07.11.2024.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource{

    @IBOutlet weak var table: UITableView!
    
    struct Game{
        let title : String
        let imageName: String
        let title2: String
        
    }
    let data: [Game] = [
        Game(title: "Counter-Strike 2", imageName: "cs2" , title2: "Valve , PC, 2023"),
        Game(title: "Cyberpunk 2077", imageName: "cyberpunk", title2: "CD Project Red, PS, XBOX , PC, 2020"),
        Game(title: "Detroit Became a Human", imageName: "detroit", title2: "Quantic Dream , PS, PC, 2018"),
        Game(title: "Grand Theft Auto V", imageName: "gta5", title2: "Rockstar , PS, XBOX, PC, 2013 "),
        Game(title: "Red Dead Redemption 2", imageName: "rdr2", title2: "Rockstar , PS, XBOX, PC, 2018 "),
        Game(title: "Witcher 3 : WildHunt", imageName: "witcher", title2: "CD Project Red, PS, XBOX , PC, 2015")]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let game = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! CustomTableViewCell
        cell.label.text = game.title
        cell.iconImageView.image = UIImage(named: game.imageName)
        cell.label2.text = game.title2
        return cell
    }
}

