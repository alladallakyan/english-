//
//  ViewController.swift
//  english
//
//  Created by Alla on 4/25/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import UIKit

class FirstPageViewController: UIViewController {

    @IBOutlet weak var GrammarButton: UIButton!
    @IBOutlet weak var practiceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func GoToPractice(_ sender: Any) {
        let vc = storyboard!.instantiateViewController(withIdentifier: "LessonsLevelsID") as!  LessonsLevelVC
        navigationController!.pushViewController(vc, animated: true)
    }
}

