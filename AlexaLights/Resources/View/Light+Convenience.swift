//
//  Light+Convenience.swift
//  AlexaLights
//
//  Created by Porter Frazier on 9/6/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import Foundation
import CoreData
import UIKit

extension Light {
    
    convenience init(name: String, icon: UIImage, isOn: Bool = true) {
        
        self.init(context: CoreDataStack.context)
        self.name = name
        self.isOn = isOn
        
        let iconData = UIImageJPEGRepresentation(icon, 0.75)
        self.iconData = iconData
        
        var icon: UIImage? {
            guard let iconData = iconData else { return nil }
            return UIImage(data: iconData)
            
        
    }
    
    
    }
    

}
