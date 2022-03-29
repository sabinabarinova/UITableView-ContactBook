

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var peopleInfo = PeopleInfo()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelName: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setUpUI() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    var rowSelected : Int?
    
    //DATASOURCE DELEGATION
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleInfo.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cells"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        cell?.textLabel?.font = UIFont(name: "AppleGothic", size: 30)
        cell?.textLabel?.text = peopleInfo.getName(number: indexPath.row)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        rowSelected = indexPath.row
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showView", sender: self)
    }
    
   

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showView" {
            let destinationVC = segue.destination as! ContactInfo
            destinationVC.indexRow = rowSelected
            destinationVC.perName = peopleInfo.getName(number: rowSelected!)
            destinationVC.phNumber = peopleInfo.getNumber(number: rowSelected!)
        }
    
    }


}


