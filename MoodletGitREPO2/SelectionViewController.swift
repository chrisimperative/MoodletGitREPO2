//
//  SelectionViewController.swift
//  MoodletGitREPO2
//
//  Created by Christopher Prena on 7/27/21.
//

import UIKit

class SelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var feeling = ""
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        feeling = sender.titleLabel!.text!
        performSegue(withIdentifier: "detailSegue", sender: self)
        
        
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ViewController
        dvc.feeling = feeling
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
