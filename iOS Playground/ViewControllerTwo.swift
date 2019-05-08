//
//  ViewControllerTwo.swift
//  iOS Playground
//
//  Created by Evan Emelga on 08/05/19.
//  Copyright © 2019 Evan Emelga. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    weak var delegate: NameDelegate?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func goBack(_ sender: UIButton)
    { self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func submitName(_ sender: UIButton)
    {
        let name = nameField.text ?? "No name"
        self.delegate?.onNameCollected(name)
    self.navigationController?.popViewController(animated: true)
    }
}
