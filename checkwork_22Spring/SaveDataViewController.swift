//
//  SaveDataViewController.swift
//  checkwork_22Spring
//
//  Created by maya on 2022/06/26.
//

import UIKit

class SaveDataViewController: UIViewController {
    
    @IBOutlet var bukiLabel: UILabel!
    @IBOutlet var tateLabel: UILabel!
    @IBOutlet var boguLabel: UILabel!
    @IBOutlet var accessoryLabel: UILabel!
    
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        bukiLabel.text = saveData.object(forKey: "BUKI") as? String
        tateLabel.text = saveData.object(forKey: "TATE") as? String
        boguLabel.text = saveData.object(forKey: "BOGU") as? String
        accessoryLabel.text = saveData.object(forKey: "ACCESSORY") as? String
        
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
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
