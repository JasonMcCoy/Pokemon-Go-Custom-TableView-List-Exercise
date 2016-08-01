//
//  myPokemon.swift
//  Pokemon Go Custom TableView List Exercise
//
//  Created by Jason McCoy on 8/1/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit

class MyPokemon: UITableViewCell {

    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var mainLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainImg.layer.cornerRadius = 5.0
        mainImg.clipsToBounds = true
    }

    func configureCell(image: UIImage, text: String) {
        mainImg.image = image
        mainLbl.text = text
    }

}
