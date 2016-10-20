//
//  ViewController.swift
//  UTables
//
//  Created by Raj Thaker on 20/10/16.
//  Copyright © 2016 Raj Thaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    var names : [String] = ["Raj", "John", "Ruel"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

