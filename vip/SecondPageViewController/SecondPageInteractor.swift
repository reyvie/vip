//
//  SecondPageInteractor.swift
//  vip
//
//  Created by Reyvie Bautista on 2/4/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import Foundation

class SecondPageInteractor{
    fileprivate var presentable: SecondPagePresentable!
    init(presenter: SecondPagePresenter){
        self.presentable = presenter
    }
}

extension SecondPageInteractor: SecondPageInteractable{
    func displayMode() {
        presentable.displayModeResult(isDarkModeResponse: UserSettings.isDarkMode())
    }
}
