//
//  WorkoutTableViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 3/7/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class WorkoutTableViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    var items:[String] = []
    
    //table view row
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    //table information being grabbed
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    
    //Reloads stored data
    override func viewDidAppear(_ animated: Bool) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        if let myItems = itemsObject as? [String] {
            items = myItems
        }
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            items.remove(at: indexPath.row)
            table.reloadData()
            UserDefaults.standard.set(items, forKey: "items")
        }
    
    }
    
}
