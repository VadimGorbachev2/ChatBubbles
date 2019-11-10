//
//  ChatMessageCell.swift
//  test3
//
//  Created by Vadim  Gorbachev on 09.11.2019.
//  Copyright © 2019 Vadim  Gorbachev. All rights reserved.
//

import UIKit

class ChatMessageCell: UITableViewCell {
    
    
    let messageLabel = UILabel()
    let bubbleBackgroundView = UIView()

    var leadingConstraint: NSLayoutConstraint!
    var trailingConstraint: NSLayoutConstraint!
    
    var chatMessage: ChatMessage! {
        didSet {
            bubbleBackgroundView.backgroundColor = chatMessage.isIncoming ? .yellow : .green
            
            messageLabel.text = chatMessage.text
            
            if chatMessage.isIncoming {
                leadingConstraint.isActive = true
                trailingConstraint.isActive = false
            } else {
                leadingConstraint.isActive = false
                trailingConstraint.isActive = true
            }
        }
    }
//    var isIncoming: Bool! {
//        didSet {
//            bubbleBackgroundView.backgroundColor = isIncoming ? .yellow : .green
//        }
//    }
//
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear 
        
        // MARK: parameters of background
        bubbleBackgroundView.backgroundColor = .yellow
        bubbleBackgroundView.layer.cornerRadius = 10
        bubbleBackgroundView.translatesAutoresizingMaskIntoConstraints = false
        
        
        // MARK: adding elements to the View
        addSubview(bubbleBackgroundView)
        addSubview(messageLabel)
        
        // MARK: parameters of messageLabel
//        //messageLabel.backgroundColor = .green
//        messageLabel.text = """
//            Список продуктов Соус Дзадзыки 1.1. Йогурт натуральный. 350-400 г1.2. Огурец 2шт 1.3. Укроп  чутка1.4. Чеснок 2-4зубчика1.5Соль1.6 Перец 1.7Оливковое масло  пара столовых ложек1.8. Марля
//            """
        messageLabel.numberOfLines = 0
        
        
//      messageLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            // MARK: Constraints for label
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 24),
           
            messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24),
           // messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor)]
   //         messageLabel.widthAnchor.constraint(equalToConstant: 250),
            messageLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 250),
            
            bubbleBackgroundView.topAnchor.constraint(equalTo: messageLabel.topAnchor, constant: -16),
            bubbleBackgroundView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -16),
            bubbleBackgroundView.bottomAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 16),
            bubbleBackgroundView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant: 16)
            
            ]
        NSLayoutConstraint.activate(constraints)
        
        
        leadingConstraint = messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28)
        leadingConstraint.isActive = false
        trailingConstraint = messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -28)
        trailingConstraint.isActive = true
        
        
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

 
