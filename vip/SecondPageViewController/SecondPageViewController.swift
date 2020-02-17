//
//  SecondPageViewController.swift
//  vip
//
//  Created by Reyvie Bautista on 2/4/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import UIKit

class SecondPageViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let houseData = ["Arryn", "Baratheon", "Greyjoy", "Lannister", "Martell", "Stark", "Targaryen", "Tully", "Tyrell"]
    let wordsData = ["As high as honor", "Ours is the fury", "We do not sow", "Hear me roar", "Unbowed, unbent, unbroken", "Winter is coming", "fire and blood", "Family, duty, honor", "Growing strong"]
    fileprivate var interactor: SecondPageInteractable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UITableView"
        self.tableView.register(UINib(nibName: String(describing: TableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: TableViewCell.self))
        
        self.interactor = SecondPageInteractor(presenter: SecondPagePresenter(viewcontroller: self))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.interactor.displayMode()
    }
    
    fileprivate func setDisplay(isDarkMode: Bool) {
        self.view.layer.backgroundColor = isDarkMode ? UIColor.black.cgColor : UIColor.white.cgColor
        self.tableView.backgroundColor = isDarkMode ? UIColor.black : UIColor.white
    }

}

extension SecondPageViewController: SecondPageViewable{
    func displayMode(isDarkMode: Bool) {
        self.setDisplay(isDarkMode: isDarkMode)
    }
}

extension SecondPageViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return houseData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self), for: indexPath) as! TableViewCell
        cell.commonInit("got_\(indexPath.item)", title: houseData[indexPath.item], subTitle: wordsData[indexPath.item])
        
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
}
