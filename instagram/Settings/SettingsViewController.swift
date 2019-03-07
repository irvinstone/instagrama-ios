//
//  SettingsViewController.swift
//  instagram
//
//  Created by Irvin Leon on 3/7/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var settingsTableView: UITableView!
    var settingsFull: [Setting] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsTableView.dataSource = self
        settingsTableView.delegate  = self
        settingsTableView.tableFooterView = UIView()
        settingsFull = SettingsService.getSettings()

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
