//
//  DescriptionViewController.swift
//  english
//
//  Created by Alla on 5/22/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import UIKit

class DescriptionVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    var lesson : Lesson!
    
    @IBOutlet weak var lessonTitle: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = lesson.description
        imageView.image = UIImage(named: lesson.name + ".jpg")
        lessonTitle.title = lesson.name
    }
    
    @IBAction func goback (_ sender: Any) {
        storyboard!.instantiateViewController(withIdentifier: "lessonsID")
        navigationController!.popViewController(animated: true)
        
    }

}
