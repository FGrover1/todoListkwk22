//
//  ToDoListTableViewController.swift
//  todoListkwk22
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }// End of VIEWDIDLOAD FUNCTION
    
    func createToDos() -> [ToDo] {
        let swift = ToDo()
        swift.name = "Show everyone we know swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk Sammy"
        dog.important = true
        
        return [swift, dog]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func tableView(_ tableView : UITableView, numberOfRowsInSection: Int) -> Int {
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let toDo = toDos[indexPath.row]
        
        if toDo.important{
            cell.textLabel?.text = "😈" + toDo.name
        }else{
            cell.textLabel?.text = toDo.name
        }

      return cell
    }
    
}
