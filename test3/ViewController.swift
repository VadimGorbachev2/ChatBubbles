//
//  ViewController.swift
//  test3
//
//  Created by Vadim  Gorbachev on 09.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit

struct ChatMessage {
    let text: String
    let isIncoming: Bool
}

class ViewController: UITableViewController {

    fileprivate let cellId = "id"
    let chatMessages = [
            ChatMessage(text: "fdfjgh what the fuck", isIncoming: true),
            ChatMessage(text: "wwowowowoowowowoowowow", isIncoming: true),
            ChatMessage(text: "YOLO YOLO YOLO YOLO YOLO YOLO YOLO OYOOYOYOYOYOYOYOYOYOYOOYOYOY", isIncoming: false),
            ChatMessage(text: "Big boi bib bib didli doo", isIncoming: true),
            ChatMessage(text: "wow", isIncoming: false)
            ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(ChatMessageCell.self, forCellReuseIdentifier: cellId)
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(white: 0.98, alpha: 1)
    }
    
    // MARK: override tableView methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatMessages.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ChatMessageCell
        let chatMessage = chatMessages[indexPath.row]
  
        cell.chatMessage = chatMessage
        
        
        //      cell.messageLabel.text = chatMessage.text
        //      cell.isIncoming = chatMessage.isIncoming
        return cell
    }
    

}

