//
//  TableDetailViewController.swift
//  iOS Playground
//
//  Created by Evan Emelga on 09/05/19.
//  Copyright © 2019 Evan Emelga. All rights reserved.
//

import UIKit

class TableDetailViewController: UIViewController
{
    var selectedFace: Student?

    @IBOutlet weak var batchLabel: UILabel!
    @IBOutlet weak var faceLabel: UILabel!
    
    override func viewDidLoad()
    {
        faceLabel.text = "Face: \(selectedFace!.face)"
        batchLabel.text = "Batch: \(selectedFace!.batch)"
        
        hideKeyboardWhenTappedAround()
        
        super.viewDidLoad()
    }

}
