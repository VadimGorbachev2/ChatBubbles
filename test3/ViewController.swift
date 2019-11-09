//
//  ViewController.swift
//  test3
//
//  Created by Vadim  Gorbachev on 09.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let cellId = "id"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    // MARK: override tableView methods
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 16
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = "OKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOK"
        cell.textLabel?.numberOfLines = 0
        
        
        return cell
    }
    

}

