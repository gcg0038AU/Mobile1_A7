//
//  SecondViewController.swift
//  Mobile1_A7_Presidents
//
//  Created by Jake Gordin on 2/15/25.
//

import UIKit

class SecondViewController: UIViewController {
    var electionYear: String  = ""
    var electionPresident: String  = ""
    @IBOutlet weak var electionInfoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        electionInfoLabel.text = "The presidential election of " + electionYear + " was won by " + electionPresident
        // Do any additional setup after loading the view.
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
