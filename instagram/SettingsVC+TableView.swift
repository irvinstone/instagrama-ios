//
//  SettingsVC+TableView.swift
//  instagram
//
//  Created by Irvin Leon on 3/7/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import UIKit

extension SettingsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return settingsFull[section].field
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settingsFull.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return settingsFull[section].values.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = settingsTableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as? SettingsViewCell else {
            fatalError()
        }
        cell.textLabel?.text = settingsFull[indexPath.section].values[indexPath.row]
        return cell
    }


}
extension SettingsViewController: UITableViewDelegate {
    
}
