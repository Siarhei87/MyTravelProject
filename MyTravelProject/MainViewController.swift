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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = countryNames[indexPath.row]
        cell.imageView?.image = UIImage(named: countryNames[indexPath.row])
        return cell
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
