//
//  ViewController.swift
//  MultipleViews
//
//  Created by Karlo Pagtakhan on 2018-11-08.
//  Copyright © 2018 Karlo Pagtakhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let texts = ["Hello", "World"]


        if var view = view1 as? TextsContaining {
            view.texts = texts
        }

        if var view = view2 as? TextsContaining {
            view.texts = texts
        }
    }
}

