//
//  TableViewController.swift
//  Project4
//
//  Created by Mehmet Can Şimşek on 14.06.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var websites = ["apple.com" , "hackingwithswift.com"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       title = "Favorite Website"

        // Do any additional setup after loading the view.
    }
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }

 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? ViewController {
            let index = indexPath.row
            vc.webIndex = index
            vc.websites = websites
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
