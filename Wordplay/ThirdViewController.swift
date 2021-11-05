//
//  ThirdViewController.swift
//  Wordplay
//
//  Created by Hazel Dodds on 11/4/21.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var noun = String()
    var adjective = String()
    var verb = String()
   
    @IBOutlet weak var fullGameSentance: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fullGameSentance.text = "\(noun) is \(adjective), so they \(verb) to the doctor!"
    
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
