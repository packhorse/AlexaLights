//
//  CoreDataStack.swift
//  AlexaLights
//
//  Created by Porter Frazier on 9/6/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    //The entire core data stack (The whole enchalada)
    static let container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "AlexaLights")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error {
                fatalError("Failed to load data from persiestence stores")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}
