//
//  ViewControllerTwo.swift
//  iOS Playground
//
//  Created by Evan Emelga on 08/05/19.
//  Copyright © 2019 Evan Emelga. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    @IBAction func goBack(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
}
