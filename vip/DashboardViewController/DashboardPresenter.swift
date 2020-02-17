//
//  LoginPresenter.swift
//  vip
//
//  Created by Reyvie Bautista on 2/3/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import Foundation

class DashboardPresenter{
    private weak var viewer: DashboardViewable!
    
    init(viewcontroller: DashboardViewable){
        self.viewer = viewcontroller
    }
}

extension DashboardPresenter: DashboardPresentable{
    func displayModeResult(isDarkMode: Bool) {
        self.viewer.isDarkMode(isDarkMode: isDarkMode)
    }
    
    
}
