//
//  MainViewController.swift
//  MyTravelProject
//
//  Created by Siarhei Dubko on 7.12.20.
//

import UIKit

class MainViewController: UITableViewController {
    
    let countryNames = [
        "Беларусь", "Германия", "Португалия", "Россия", "Италия"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryNames.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel?.text = countryNames[indexPath.row]
        cell.imagePlace?.image = UIImage(named: countryNames[indexPath.row])
        cell.imagePlace?.layer.cornerRadius = cell.imagePlace.frame.size.height / 2
        cell.imagePlace?.clipsToBounds = true
        return cell
    }

    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
