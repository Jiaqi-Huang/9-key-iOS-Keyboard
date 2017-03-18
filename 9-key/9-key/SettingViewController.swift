//
//  SettingViewController.swift
//  9-key
//
//  Created by AlexaLiu on 2/19/17.
//  Copyright © 2017 hjq. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var currProfLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var userDefaults = UserDefaults(suiteName: "group.9-key-proj")
        let email = userDefaults?.object(forKey: "email") as! String

        let file = userDefaults?.object(forKey: "cur_file_name") as! String
        self.userInfoLabel.text = "Logged in as: " + email
        self.currProfLabel.text = "Using dict: " + file

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        var userDefaults = UserDefaults(suiteName: "group.9-key-proj")
        let email = userDefaults?.object(forKey: "email") as! String
        let file = userDefaults?.object(forKey: "cur_file_name") as! String
        self.userInfoLabel.text = "Logged in as: " + email
        self.currProfLabel.text = "Using dict: " + file
        
        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapManageProfs(_ sender: Any) {
        performSegue(withIdentifier: "ToProfileManage", sender: nil)
    }

    @IBAction func didTapsysProfs(_ sender: Any) {
        performSegue(withIdentifier: "ToSysProfs", sender: nil)
    }
    
    @IBAction func didTapConnectComputer(_ sender: Any) {
        performSegue(withIdentifier: "ToComputer", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
