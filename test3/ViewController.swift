//
//  ViewController.swift
//  test3
//
//  Created by Vadim  Gorbachev on 09.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    fileprivate let cellId = "id"
    let textMessages = [
    "gdhfjkghsdfkjghdskflgjhsdflkgjhsdflgkjhsdf-erytkjdbnvcx,m",
    "fdfjgh what the fuck",
    "wwowowowoowowowoowowow",
    "YOLO YOLO YOLO YOLO YOLO YOLO YOLO OYOOYOYOYOYOYOYOYOYOYOOYOYOY",
    "Big boi bib bib didli doo"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(ChatMessageCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
    }
    
    // MARK: override tableView methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textMessages.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ChatMessageCell
        // cell.textLabel?.text = "OKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOKOK"
        // cell.textLabel?.numberOfLines = 0
        
        cell.messageLabel.text = textMessages[indexPath.row]
        
        return cell
    }
    

}

