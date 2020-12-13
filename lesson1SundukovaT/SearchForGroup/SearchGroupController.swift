//
//  SearchGroupController.swift
//  lesson1SundukovaT
//
//  Created by Татьяна Сундукова on 10.12.2020.
//

import UIKit

/*struct Groups {
    let name: String
    let infoGroup: String
    let avatar: UIImage?
}*/
class SearchGroupController: UITableViewController {
    
    var searchGroup = [
        SearchGroup(name: "Save the World", infoGroup: "Let's save the Planet", avatar: UIImage(named: "Save the World")),
        SearchGroup(name: "Diamonds", infoGroup: "Diamonds are amazing", avatar: UIImage(named: "Diamonds")),
        SearchGroup(name: "Love", infoGroup: "What is LOVE?", avatar: UIImage(named: "Love")),
        SearchGroup(name: "Cats", infoGroup: "Everyone loves cats", avatar: UIImage(named: "Cats"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        searchGroup.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchGroup", for: indexPath) as! SearchGroupCell
        let users = searchGroup[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = users.name
        content.secondaryText = users.infoGroup
        content.image = users.avatar
        cell.contentConfiguration = content
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
