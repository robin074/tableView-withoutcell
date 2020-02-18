//
//  ViewController.swift
//  tableView wc
//
//  Created by Apple MacBook Pro on 2/17/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var alffArray  = ["aaa","bbb","ccc","ddd","eee"]
    @IBOutlet weak var tabileView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabileView.dataSource = self
        tabileView.delegate = self
        
        
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alffArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = alffArray[indexPath.row]
        return cell!
    }
    
}
