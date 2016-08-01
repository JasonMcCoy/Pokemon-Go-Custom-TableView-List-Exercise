//
//  ViewController.swift
//  Pokemon Go Custom TableView List Exercise
//
//  Created by Jason McCoy on 7/14/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myPokemon = [
        "http://nerdorgeek.com/wp-content/uploads/2016/08/charizard-mega-y.jpg", // MEGA Charizard
        
        "http://nerdorgeek.com/wp-content/uploads/2016/08/blastoise-mega.jpg", // MEGA Blastoise
        
        "http://nerdorgeek.com/wp-content/uploads/2016/08/jill672-arcanine-3.jpg", // Arcanine
        
        "http://nerdorgeek.com/wp-content/uploads/2016/08/Gyarados.png", // Gyarados
        
        "http://nerdorgeek.com/wp-content/uploads/2016/08/Drake_Gengar.png" // Gengar
    ]
    
    var myPokemonDescription = ["Go! MEGA Charizard.",
                                "Go! MEGA Blastoise.",
                                "Go! Arcanine.",
                                "Go! Gyaradose.",
                                "Go! Gengar."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myPokemon") as? myPokemon {
            
            var img: UIImage!
            
            let url = NSURL(string: myPokemon[indexPath.row])!
            if let data = NSData(contentsOf: url as URL) {
               let img = UIImage(data: data as Data)
            } else {
                img = UIImage(named: "whosThatPokemon")
            }
            
            cell.configureCell(image: img, text: myPokemon[indexPath.row])
            
            return cell
            
        } else {
            
            return myPokemon
            
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    

    /* Hide Status Bar */
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    /* End Hide Status Bar */

}

