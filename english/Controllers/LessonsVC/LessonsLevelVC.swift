//
//  LessonsLevelsViewController.swift
//  english
//
//  Created by Alla on 5/22/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import UIKit

class LessonsLevelVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var rows = LevelsStore.levelStore
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LevelsStore.levelStore.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = rows[indexPath.row]?.name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "lessonsID") as! LessonsVC
        vc.level = rows[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func goback (_ sender: Any) {
        storyboard!.instantiateViewController(withIdentifier: "GrammarPageID")
        navigationController!.popViewController(animated: true)
        
    }
}
