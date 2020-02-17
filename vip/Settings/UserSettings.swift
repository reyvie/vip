//
//  UserSettings.swift
//  vip
//
//  Created by Reyvie Bautista on 2/4/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import Foundation
class UserSettings{
    public static func setDisplayMode(_ value: Bool){
        UserDefaults.standard.set(value, forKey: "Display Mode")
    }
    public static func isDarkMode() -> Bool{
        return UserDefaults.standard.bool(forKey: "Display Mode")
    }
}
