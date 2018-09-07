//
//  LightController.swift
//  AlexaLights
//
//  Created by Porter Frazier on 9/6/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import UIKit
import CoreData

class LightController {
    
    //Shared instance or singelton.
static let shared = LightController()
    private init (){}
    
    //Source of truth
    let mockLights: [Light] = {
        let kitchen = Light(name: "Kitchen", icon: #imageLiteral(resourceName: "kitchen"))
        let office = Light(name: "Office", icon: #imageLiteral(resourceName: "office"))
        let livingRoom = Light(name: "Living Room", icon: #imageLiteral(resourceName: "livingRoom"))
        let bedRoom = Light(name: "Bed Room", icon: #imageLiteral(resourceName: "bedroom"))
        let laundryRoom = Light(name: "Laundry Room", icon: #imageLiteral(resourceName: "LaundryRoom"))
        
        return [kitchen, office, livingRoom, laundryRoom, bedRoom]
    }()
    
    //CRUD
    
    func createLightWith(name: String, icon: UIImage) {
    Light(name: name, icon: icon)
    saveToPersistentStore()
    }
    
    func delete(light: Light) {
        light.managedObjectContext?.delete(light)
        saveToPersistentStore()
    }
    
    //Save
    func saveToPersistentStore() {
        do {
        try CoreDataStack.context.save()
        } catch {
             print("There was an error in \(#function) : \(error) \(error.localizedDescription)")
    }

}
}
