//
//  SettingsService.swift
//  instagram
//
//  Created by Irvin Leon on 3/7/19.
//  Copyright © 2019 orbis. All rights reserved.
//

import Foundation

class SettingsService {
    
    
    static func getSettings() -> [Setting] {
        var settings: [Setting] = []
        settings.append(Setting(field:"Primero",values:["valor","valor2","valor3"]))
        settings.append(Setting(field:"Segundo",values:["valor"]))
        settings.append(Setting(field:"Tercero",values:["valor","valor2"]))
        settings.append(Setting(field:"Cuarto",values:["valor"]))
        return settings
    }
}
