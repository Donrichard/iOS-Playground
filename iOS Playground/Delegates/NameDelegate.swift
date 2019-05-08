//
//  NameDelegate.swift
//  iOS Playground
//
//  Created by Evan Emelga on 08/05/19.
//  Copyright © 2019 Evan Emelga. All rights reserved.
//

import Foundation

protocol NameDelegate: class
{
    func onNameCollected(_ name: String)
}
