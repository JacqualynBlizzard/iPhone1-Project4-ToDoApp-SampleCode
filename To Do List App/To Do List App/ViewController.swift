//
//  ViewController.swift
//  To Do List App
//
//  Created by Jacqualyn Blizzard-Caron on 2/1/19.
//  Copyright © 2019 Jacqualyn Blizzard-Caron. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var inputTaskTextField: UITextField!
    
    @IBAction func handleAddTaskButtonPress(_ sender: Any) {
        // Part 4
        addNewTask()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // Part 4
    func addNewTask() {
        if (inputTaskTextField.text != "") {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newTask = Task(context:context)
            newTask.taskName = inputTaskTextField?.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            print(newTask.taskName!) //for testing purposes only
            inputTaskTextField.text = ""
            inputTaskTextField.resignFirstResponder()
        }
    }
}

