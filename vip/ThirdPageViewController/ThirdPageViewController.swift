//
//  ThirdPageViewController.swift
//  vip
//
//  Created by Reyvie Bautista on 2/10/20.
//  Copyright © 2020 Reyvie Bautista. All rights reserved.
//

import UIKit

class ThirdPageViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: String(describing: ThirdPageTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: ThirdPageTableViewCell.self))
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

extension ThirdPageViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ThirdPageTableViewCell.self), for: indexPath) as! ThirdPageTableViewCell
        
        cell.commonInit(timeIn: "07:05", lateIn: <#T##String#>, outToLunch: <#T##String#>, backFromLunch: <#T##String#>, lateBackFromLunch: <#T##String#>, timeOut: <#T##String#>, underTime: <#T##String#>)
        
//        cell.commonInit("got_\(indexPath.item)", title: houseData[indexPath.item], subTitle: wordsData[indexPath.item])
//
//        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    
}
