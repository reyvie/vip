//
//  DashboardInteractor.swift
//  vip
//
//  Created by Reyvie Bautista on 1/31/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import Foundation

class DashboardInteractor{
    fileprivate var presentable: DashboardPresentable!
    init(presenter: DashboardPresentable){
        self.presentable = presenter
    }
}

extension DashboardInteractor: DashboardInteractable{
    func displayMode() {
        presentable.displayModeResult(isDarkMode: UserSettings.isDarkMode())
    }
    func toggleDarkMode(){
        if UserSettings.isDarkMode(){
            UserSettings.setDisplayMode(false)
            presentable.displayModeResult(isDarkMode: false)
        }else{
            UserSettings.setDisplayMode(true)
            presentable.displayModeResult(isDarkMode: true)
        }
    }
}

