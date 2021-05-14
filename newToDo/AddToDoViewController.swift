//
//  AddToDoViewController.swift
//  newToDo
//
//  Created by Celine Boudaie on 7/14/20.
//  Copyright © 2020 Celine Boudaie. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
     @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var previousVC = ToDoTableViewController()

    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()

        if let titleText = titleTextField.text {
          toDo.name = titleText
          toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
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
