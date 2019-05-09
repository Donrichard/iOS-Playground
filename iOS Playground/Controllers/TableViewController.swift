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
    var studentsBySection: [Int : [Student]] = [:]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        studentsBySection = Dictionary(grouping: students, by: { $0.batch })
        
        tableView.dataSource = self
        tableView.delegate = self
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
        return self.studentsBySection[section + 1]!.count
        
//        return self.students.filter({ (Q) -> Bool in
//            Q.batch == section + 1
//        }).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        let students = self.studentsBySection[indexPath.section + 1]
        let student = students![indexPath.row]
        cell.textLabel?.text = student.face
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return "Batch \(section + 1)"
    }
}

extension TableViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("Section:\(indexPath.section)")
        print("Row:\(indexPath.row)")
    }
}
