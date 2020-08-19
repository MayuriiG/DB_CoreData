//
//  PersistentStorage.swift
//  Ios_project_2
//
//  Created by Mayurii Gajbhiye on 19/08/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import Foundation
import CoreData

//Singleton pattern

class PersistentStorage{
    
    private init (){}
    static  let shared = PersistentStorage()
    
    
    
        // MARK: - Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Ios_project_2")
            container.loadPersistentStores(completionHandler: { (storeDescription, error) in
        if let error = error as NSError? {
                    fatalError("Unresolved error \(error), \(error.userInfo)")
                }
            })
            return container
        }()
        
        
    // MARK: - Save
               
     lazy var  context = persistentContainer.viewContext
        func saveContext () {
         //  let  context = persistentContainer.viewContext
            if context.hasChanges {
                do {
                    try context.save()
                } catch {
                    
                    let nserror = error as NSError
                    fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                }
                
                // MARK: - Core Data Saving support
            }
        }
    
}
