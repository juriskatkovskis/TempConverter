//
//  resultViewController.swift
//  TempConverter
//
//  Created by juris.katkovskis on 08/08/2022.
//

import UIKit

class resultViewController: HomeViewController {


    @IBOutlet weak var tempValueLabel: UILabel!
    
    var tempValueText = ""
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !tempValueText.isEmpty {
            tempValueLabel.text = tempValueText
        }
        

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
