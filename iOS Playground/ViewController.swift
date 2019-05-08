//
//  ViewController.swift
//  iOS Playground
//
//  Created by Evan Emelga on 08/05/19.
//  Copyright © 2019 Evan Emelga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        print("First")
        super.loadView()
    }
    
    override func viewDidLoad(){
        print("Second")
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("Third")
    }

    override func viewDidAppear(_ animated: Bool) {
        
        print("Fourth")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("Fifth")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        print("Sixth")
    }
    
    @IBAction func goToSecondScreen(_ sender: UIButton)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ViewControllerTwo") as! ViewControllerTwo
        self.present(controller, animated: true, completion: nil)
    }
}

