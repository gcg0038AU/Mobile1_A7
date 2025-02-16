//
//  ViewController.swift
//  Mobile1_A7_Presidents
//
//  Created by Jake Gordin on 2/15/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var elections = [
        ElectionYear("1864", "Abraham Lincoln"),
        ElectionYear("1868", "Ulysses Grant"),
        ElectionYear("1872", "Ulysses Grant"),
        ElectionYear("1876", "Rutherford Hayes"),
        ElectionYear("1880", "James Garfield"),
        ElectionYear("1884", "Grover Cleveland"),
        ElectionYear("1888", "Benjamin Harrison"),
        ElectionYear("1892", "Grover Cleveland"),
        ElectionYear("1896", "William McKinley"),
        ElectionYear("1900", "William McKinley"),
        ElectionYear("1904", "Theodore Roosevelt"),
        ElectionYear("1908", "William Taft")
    ]
    var electionYear: String = ""
    var electionPresident: String = ""
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elections.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = elections[indexPath.row].year
        content.secondaryText = elections[indexPath.row].president
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected cell \(indexPath.row)")
        electionYear = elections[indexPath.row].year
        electionPresident = elections[indexPath.row].president
        self.performSegue(withIdentifier: "toElectionInfo", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toElectionInfo") {
            let navigation = segue.destination as! SecondViewController
            navigation.electionYear = electionYear
            navigation.electionPresident = electionPresident
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

