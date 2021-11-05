//
//  SecondViewController.swift
//  Wordplay
//
//  Created by Hazel Dodds on 10/28/21.
//

import UIKit

class SecondViewController: UIViewController {
    var uncleDestination = String()
   
    
    @IBOutlet weak var completeSentance: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        completeSentance.text = "My uncle wants to go to \(uncleDestination)"

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
