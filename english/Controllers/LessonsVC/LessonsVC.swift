//
//  LessonsViewController.swift
//  english
//
//  Created by Alla on 5/22/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import UIKit

class LessonsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var levelTitle: UINavigationItem!
    @IBOutlet weak var tableView: UITableView!
    var level: Level!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        levelTitle.title = level.name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return LessonsStore.starterLevelLessons.count
        return level.lessons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = level.lessons[indexPath.row].name
        cell.textLabel?.numberOfLines = 3
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "descriptionID") as! DescriptionVC
        vc.lesson = level.lessons[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func goback (_ sender: Any) {
        storyboard!.instantiateViewController(withIdentifier: "LessonsLevelsID")
        navigationController!.popViewController(animated: true)

    }
}

