//
//  ViewController.swift
//  Wordplay
//
//  Created by Hazel Dodds on 10/27/21.
//

import UIKit

class ViewController: UIViewController {
    let sentance = "The quick brown fox jumps over the lazy dog"
    @IBOutlet weak var uncleButton: UIButton!
    @IBOutlet weak var uncleTextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var findMeTextField: UITextField!
    @IBOutlet weak var findMeSentance: UILabel!
    @IBOutlet weak var replaceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        findMeSentance.text = sentance
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "uncleSegue" {
        let svc = segue.destination as! SecondViewController
        svc.uncleDestination = uncleTextField.text!
        }
        else if segue.identifier == "gameSegue" {
            let svc = segue.destination as! ThirdViewController
            svc.noun = nounTextField.text!
            svc.adjective = adjectiveTextField.text!
            svc.verb = verbTextField.text!
        }
    
    }
    
    @IBAction func findMeButton(_ sender: UIButton) {
       
        if (findMeSentance.text!.range(of: findMeTextField.text!, options: .caseInsensitive) != nil) == true {
            
            let rightAlert = UIAlertController(title: "😀", message: nil, preferredStyle: .alert)
               
            rightAlert.addAction(UIAlertAction(title: "Dissmiss", style: .default, handler: nil))
               
            self.present(rightAlert, animated: true)
        }
       
        else {
            let wrongAlert = UIAlertController(title: "☹️", message: nil, preferredStyle: .alert)
               
            wrongAlert.addAction(UIAlertAction(title: "Dissmiss", style: .default, handler: nil))
               
            self.present(wrongAlert, animated: true)
        }
    }
    
    @IBAction func replaceButton(_ sender: UIButton) {
        if findMeTextField.text == "" {
            let wrongAlert = UIAlertController(title: "☹️", message: nil, preferredStyle: .alert)
               
            wrongAlert.addAction(UIAlertAction(title: "Dissmiss", style: .default, handler: nil))
               
            self.present(wrongAlert, animated: true)
            }
        else {
            findMeTextField.text = replaceTextField.text
            replaceTextField.text = ""
        }
        if replaceTextField.text == "" {
            let nothingAlert = UIAlertController(title: "No word entered", message: nil, preferredStyle: .alert)
               
            nothingAlert.addAction(UIAlertAction(title: "Dissmiss", style: .default, handler: nil))
               
            self.present(nothingAlert, animated: true)
        }
    
    
    
    }
    
}


