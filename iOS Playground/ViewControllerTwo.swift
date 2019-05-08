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
        addNavItem()
        super.viewDidLoad()
    }

    @IBAction func goBack(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    func addNavItem()
    {
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width,height: 50));
        navbar.tintColor = UIColor.lightGray
        self.view.addSubview(navbar)
        
        let navItem = UINavigationItem(title: "Second Screen")
        let navBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.undo, target: self, action: nil)
        //let navBarButton = UIBarButtonItem(title: "<Back", style: .done, target: self, action: nil)
        navItem.leftBarButtonItem = navBarButton
        
        navbar.items = [navItem]
    }
}
