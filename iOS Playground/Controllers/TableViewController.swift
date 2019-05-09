//
//  TableViewController.swift
//  iOS Playground
//
//  Created by Evan Emelga on 09/05/19.
//  Copyright © 2019 Evan Emelga. All rights reserved.
//

import UIKit

class TableViewController: UIViewController
{
    @IBOutlet weak var tableView: UITableView!
    var students: [Student] = [
        Student("😀",1),
        Student("😇",1),
        Student("😚",2),
        Student("😫",2),
        Student("🤬",3),
        Student("🥶",3),
        Student("😱",1),
        Student("😨",1),
        Student("🤢",2),
        Student("🤝",2),
        Student("✍️",3),
        Student("👤",3),
        Student("👴",1),
        Student("👨‍⚕️",1)]
    
    var lastIndex: Int?
    var studentsInThisSection: [Student] = []

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }

}

extension TableViewController: UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        let batches = self.students.map { $0.batch }
        let distinct = Array(Set(batches))
        return distinct.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.students.filter({ (Q) -> Bool in
            Q.batch == section + 1
        }).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        if self.lastIndex != indexPath.section + 1 {
            self.studentsInThisSection = self.students.filter({ (Q) -> Bool in
                Q.batch == indexPath.section + 1
            })
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        let item = self.studentsInThisSection[indexPath.row]
        cell.textLabel?.text = item.face
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return "Batch \(section + 1)"
    }
}
