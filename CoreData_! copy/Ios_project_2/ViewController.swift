//
//  ViewController.swift
//  Ios_project_2
//
//  Created by Mayurii Gajbhiye on 12/08/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        fetchEmployee()
    
    }

      func createEmployee()
      {
          let employee = Employee(context: PersistentStorage.shared.context)
          employee.name = "Ravi"
          PersistentStorage.shared.saveContext()
      }
    
    

//Call can throw, but it is not marked with 'try' and the error is not handled      --error for this [do try catch] .......

func fetchEmployee()
          {
               let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
                         debugPrint(path[0])
        
        
        do {
            guard let result = try PersistentStorage.shared.context.fetch(Employee.fetchRequest()) as? [Employee] else {return}

            result.forEach({debugPrint($0.name!)})


        } catch let error
        {
            debugPrint(error)
        }

    }
}

