

import UIKit

var levels = ["Starter", "Elementary", "Pre-intermediate", "Intermediate", "Upper-intermediate", "Advanced"]
var segueIdentifier =  ["segue1", "segue2", "segue3", "segue4", "segue5", "segue6"]

class GrammarLevelsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = levels[indexPath.row]
       // cell.textLabel?.font = UIFont .systemFont(ofSize: 28.0)
        cell.textLabel?.font = UIFont .italicSystemFont(ofSize: 28.0)
        
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.frame = CGRect(x: 20, y: 80, width: 280, height: 0)
        //progressView.progress += 0.0
        //progressView.progress =
        progressView.rightAnchor.accessibilityActivate()
        progressView.progressTintColor = UIColor.blue
        progressView.trackTintColor = UIColor.red
        
        cell.contentView.addSubview(progressView)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return levels.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifier[indexPath.row], sender: self)
        //let vc = storyboard!.instantiateViewController(withIdentifier: "quizID") as! QuizStarterViewController
        
        //navigationController?.pushViewController(vc, animated: true)
    }
    // MARK: - Table view data source
    @IBAction func goBack(_ sender: Any) {
        storyboard!.instantiateViewController(withIdentifier: "FirstPageID")
        navigationController!.popViewController(animated: true)
    }

}
/*
 // Override to support conditional editing of the table view.
 override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the specified item to be editable.
 return true
 }
 */

/*
 // Override to support editing the table view.
 override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
 if editingStyle == .delete {
 // Delete the row from the data source
 tableView.deleteRows(at: [indexPath], with: .fade)
 } else if editingStyle == .insert {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
 
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
 // Return false if you do not want the item to be re-orderable.
 return true
 }
 */

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */
