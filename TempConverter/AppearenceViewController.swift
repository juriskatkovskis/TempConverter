//
//  AppearenceViewController.swift
//  TempConverter
//
//  Created by juris.katkovskis on 08/08/2022.
//

import UIKit

class AppearenceViewController: HomeViewController {

    
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func openSettingTapped(_ sender: Any) {
        openSettings()
    }
    //@IBAction func openSettingTapped(_ sender: Any) {
        //        openSettings()
 //   }
    func setLabelText(){
          var text = "Unable to specify UI style"
          
          if self.traitCollection.userInterfaceStyle == .dark{
              text = "Dark Mode is On"
          }else{
              text = "Light Mode is On"
          }
          
          textLabel.text = text
    }
    func openSettings(){
            guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {return}
            if UIApplication.shared.canOpenURL(settingURL){
                UIApplication.shared.open(settingURL, options: [:]) { success in
                    print("success: ", success)
                }
            }
        }
        
        
    }

    extension AppearenceViewController {
        override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
            setLabelText()
        }
    }
