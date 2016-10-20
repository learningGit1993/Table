//
//  ViewController.swift
//  UTables
//
//  Created by Raj Thaker on 20/10/16.
//  Copyright © 2016 Raj Thaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    let tableRows : Int = 10
    var current : Int = 1
    
    @IBOutlet weak var currentTableData: UILabel!
    @IBOutlet weak var dataTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = "\((indexPath.row + 1) * current)"
        return cell
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func valueChanged(_ sender: UISlider) {
        current = Int(sender.value)
        currentTableData.text = "\(current)"
        self.dataTable.reloadData()
    }

}

