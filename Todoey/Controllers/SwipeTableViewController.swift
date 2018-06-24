//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Rainier Feiler on 6/24/18.
//  Copyright © 2018 Rainier Feiler. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SwipeCell", for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }
        
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            self.delete(at: indexPath)
        }
        
        //        deleteAction.image = UIImage(named: "delete-icon")
        
        return [deleteAction]
    }
    
    func delete(at indexPath: IndexPath) {
        
    }
    
}
