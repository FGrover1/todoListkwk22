//
//  CompleteToDoViewController.swift
//  todoListkwk22
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousVC = ToDoListTableViewController()
    var selectedToDo = ToDo()
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedToDo.name

        // Do any additional setup after loading the view.
    }
        @IBAction func completeTapped(_ sender: Any) {
          }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

