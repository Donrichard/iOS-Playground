//
//  ViewController.swift
//  iOS Playground
//
//  Created by Evan Emelga on 08/05/19.
//  Copyright © 2019 Evan Emelga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func loadView() {
        print("Load, do not change this on XIB or Storyboard!")
        super.loadView()
    }
    
    override func viewDidLoad(){
        print("View Did Load")
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View Will Appear")
    }

    override func viewDidAppear(_ animated: Bool) {
        
        print("View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        print("View Did Disappear")
    }
    
    @IBAction func goToSecondScreen(_ sender: UIButton)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyboard.instantiateViewController(withIdentifier: "ViewControllerTwo") as! ViewControllerTwo
        vc2.delegate = self
        
        let recipientDelegate: NameDelegate = vc2
        recipientDelegate.onNameCollected("Test")
        
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    @IBAction func onShowAlertPressed(_ sender: UIButton)
    {
        let alert = UIAlertController(title: "Hello!", message: "Hai", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Okay", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

extension ViewController: NameDelegate
{
    func onNameCollected(_ name: String)
    {
        nameLabel.text = name
    }
}
