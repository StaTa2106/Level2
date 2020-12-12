//
//  GroupsController.swift
//  lesson1SundukovaT
//
//  Created by Татьяна Сундукова on 09.12.2020.
//

import UIKit

struct MyGroups  {
    var name: String
    var slogan: String
    var avatar: UIImage
}

class GroupsController: UITableViewController {
    
    
    
    var searchGroup = [String] ()
    var infoGroup = [String] ()
    
    
    
    @IBAction func addGroup (segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            
            guard let searchGroupController = segue.source as? SearchGroupController
            else {return}
            if let indexPath = searchGroupController.tableView.indexPathForSelectedRow {
                // let myGr = allFriends[indexPath.row]
                let myGroups = searchGroupController.searchGroup[indexPath.row]
                let myGroupsName = myGroups.name
                let myGroupsInfo = myGroups.infoGroup
                //let info = searchGroupController.infoGroup[indexPath.row]
                if !searchGroup.contains(myGroupsName) && !infoGroup.contains(myGroupsInfo) {
                    
                    searchGroup.append(myGroupsName)
                    infoGroup.append(myGroupsInfo)
                    tableView.reloadData()
                }
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        searchGroup.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroups", for: indexPath) as! GroupsCell
        let group = searchGroup[indexPath.row]
        let slogan = infoGroup[indexPath.row]
        
        
        var content = cell.defaultContentConfiguration()
        content.text = group
        content.secondaryText = slogan
        content.image = UIImage(named: group)
        cell.contentConfiguration = content
        
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            searchGroup.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}
