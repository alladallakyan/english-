//
//  PicQuizVC.swift
//  english
//
//  Created by Alla on 6/15/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import UIKit
import FirebaseFirestore

class PicQuizVC: UIViewController {

    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var missedQuestions: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let db = Firestore.firestore()
        
    }
    
    func fetchQequest() {
        
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
    }
    
    @IBAction func previusQuestion(_ sender: Any) {
    }
    
    @IBAction func done(_ sender: Any) {
    }
}

/*let ref = Database.database().reference().child("questions").child("question").child("answers").child("answer")

ref.observeSingleEvent(of: .childAdded, with: { (snapshot) in
    if let questDict = snapshot.value as? [String:Any] {
        print(questDict["answer"] as Any)
    }
}
)*/
