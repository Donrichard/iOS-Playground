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
    var items: [String] = ["Test","😀","😇","😚","😫","🤬","🥶","😱","😨","🤢","🤝","✍️","👤","👴","👨‍⚕️"]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableView.dataSource = self
    }

}

extension TableViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let item = self.items[indexPath.item]
        cell.textLabel?.text = item
        
        return cell
    }
}
