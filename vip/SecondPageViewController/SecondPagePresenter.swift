//
//  SecondPagePresenter.swift
//  vip
//
//  Created by Reyvie Bautista on 2/4/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import Foundation

class SecondPagePresenter{
    private weak var viewer: SecondPageViewable!
    init(viewcontroller: SecondPageViewable){
        self.viewer = viewcontroller
    }
}

extension SecondPagePresenter: SecondPagePresentable{
    func displayModeResult(isDarkModeResponse: Bool) {
        viewer.displayMode(isDarkMode: isDarkModeResponse)
    }
    
    
}
