//
//  ViewController.swift
//  vip
//
//  Created by Reyvie Bautista on 1/31/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var dashboardSwitch: UISwitch!
    
    fileprivate var interactor: DashboardInteractable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.interactor = DashboardInteractor(presenter: DashboardPresenter(viewcontroller: self))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.interactor.displayMode()
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        self.interactor.toggleDarkMode()
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        self.interactor.toggleDarkMode()
    }
    
    private func displayMode(isDarkMode: Bool) {
        label.text = isDarkMode ? "dark" : "light"
        label.textColor = isDarkMode ? UIColor.white : UIColor.black
        dashboardSwitch.isOn = isDarkMode ? true : false
        view.layer.backgroundColor = isDarkMode ? UIColor.black.cgColor : UIColor.white.cgColor
        
        //_ = isDarkMode ? self.setStatusBarStyle(.lightContent) : self.setStatusBarStyle(.default)
    }
}

extension DashboardViewController: DashboardViewable{
    func isDarkMode(isDarkMode: Bool) {
        displayMode(isDarkMode: isDarkMode)
    }
}

extension UIViewController {
    func setStatusBarStyle(_ style: UIStatusBarStyle) {
        if let statusBar = UIApplication.shared.value(forKey: "statusBar") as? UIView {
            statusBar.backgroundColor = style == .lightContent ? UIColor.black : .white
            statusBar.setValue(style == .lightContent ? UIColor.white : .black, forKey: "foregroundColor")
        }
    }
}
