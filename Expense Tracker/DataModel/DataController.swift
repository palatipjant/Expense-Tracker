//
//  DataController.swift
//  Expense Tracker
//
//  Created by Palatip Jantawong on 13/2/2567 BE.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "ExpenseTracker")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("failed to load data in data controller \(error.localizedDescription)")
            }
        }
    }
}
