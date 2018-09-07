//
//  LightTableViewCell.swift
//  AlexaLights
//
//  Created by Porter Frazier on 9/6/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import UIKit

class LightTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var roomImageView: UIImageView!
    @IBOutlet weak var roomNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func lightSwitchFlipped(_ sender: Any) {
    }
    
}
