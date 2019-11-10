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
    let date: Date
}

// extension for changing original date
extension Date {
    static func dateFromCustomStringString(customString: String) -> Date {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        return dateFormatter.date(from: customString) ?? Date()
      
    }
}

class ViewController: UITableViewController {

    fileprivate let cellId = "id"
//    let chatMessages = [
//            ChatMessage(text: "fdfjgh what the fuck", isIncoming: true),
//            ChatMessage(text: "wwowowowoowowowoowowow", isIncoming: true),
//            ChatMessage(text: "YOLO YOLO YOLO YOLO YOLO YOLO YOLO OYOOYOYOYOYOYOYOYOYOYOOYOYOY", isIncoming: false),
//            ChatMessage(text: "Big boi bib bib didli doo", isIncoming: true),
//            ChatMessage(text: "wow", isIncoming: false)
//            ]
    
    let chatMessages = [
        [ChatMessage(text: """
                    Я, блять, в своем познании настолько преисполнился, что я как будто бы уже сто триллионов миллиардов лет, блять, проживаю на триллионах и триллионах таких же планет, понимаешь? Как эта Земля. Мне уже этот мир абсолютно понятен, и я здесь ищу только одного, блять: покоя, умиротворения и вот этой гармонии от слияния с бесконечно вечным. От созерцания этого великого фрактального подобия и от вот этого вот замечательного всеединства существа бесконечно вечного – куда ни посмотри: хоть в глубь – бесконечно малое, хоть ввысь – бесконечно большое, понимаешь?
                    """, isIncoming: true, date: Date.dateFromCustomStringString(customString: "8/11/2019")),
         ChatMessage(text: """
                    А ты мне опять со своими там это. Иди суетись дальше, твое распределение – это твой путь и твой горизонт познания, ощущения и твоей природы. И он несоизмеримо мелок по сравнению с моим, понимаешь? Я как будто уже глубокий старец бессмертный или там уже почти бессмертный, который на этой планете от её самого зарождения, еще когда только солнце еще только-только сформировалось как звезда и вот это газопылевое облако…
                    """, isIncoming: false, date: Date.dateFromCustomStringString(customString: "")),
        ],
        [
            ChatMessage(text: """
                    не похуй на твои тачки, на твои, блять, нахуй, яхты, на твои квартиры там, на твое благо, понимаешь? Я был на этой планете или бесконечном множестве и круче Цезаря, и круче Гитлера, блять, и круче всех великих, понимаешь? А где-то был конченым говном, еще хуже, чем здесь. Потому что я множество этих состояний чувствую.
                    """, isIncoming: false, date: Date.dateFromCustomStringString(customString: "")),
            ChatMessage(text: """
                    Где-то я был больше подобен растению, где-то был больше подобен птице, там червю. Где-то просто был сгусток камня. Это все есть душа, понимаешь? Она вот имеет грани подобия совершенно многообразные, бесконечное множество. Но тебе этого не понять, поэтому ты езжай себе, блять. Мы в этом мире как бы живем разными ощущениями, разными стремлениями. Соответственно разное наше и место, разное наше распределение.
                    """, isIncoming: true, date: Date.dateFromCustomStringString(customString: "")),
            ChatMessage(text: """
                    Тебе я желаю, чтоб все самые крутые тачки были у тебя и все самые лучшие самки, чтобы раздвигали перед тобой ноги там, все свои щели шиворот-навыворот, блять, перед тобой, как ковер раскрывали и растлевали, растлали. И ты их чтоб ебал до посинения, до красна, как солнца закатного. Чтоб на лучших яхтах, на самолетах летал и кончал прямо с иллюминатора и все что только может в голову прийти или не прийти. Если мало идей – обращайся ко мне, я тебе на каждую твою идею еще сотни триллионов подскажу как, что делать.
                    """, isIncoming: false, date: Date.dateFromCustomStringString(customString: ""))
        ],
        [
            ChatMessage(text: """
                    Ну а я, что? Я иду как глубокий старец, узревший вечное, прикоснувшийся к божественному, сам стал богоподобен и устремлен в это бесконечное. Который в умиротворении, покое, гармонии, благодати, в этом сокровенном блаженстве пребывает, вовлеченный во все и во вся, понимаешь? Вот и все.
                    """, isIncoming: true, date: Date.dateFromCustomStringString(customString: "")),
            ChatMessage(text: "В этом наша разница, так сказать.", isIncoming: true, date: Date())
        ],
        [
            ChatMessage(text: """
                    Я иду любоваться мирозданием, а ты идешь какой-то преисполняться в гранях каких-то. Вот и вся разница, понимаешь? Ты не зришь это вечное бесконечное, оно тебе не нужно. Но зато ты, так сказать, более активен, как вот этот дятел долбящий или муравей, который вот очень активен в своей стезе, вот и все. Поэтому давай, наши пути здесь, так сказать, имеют, конечно, грани подобия, потому что все едино, но ты меня... Я-то тебя прекрасно понимаю, а вот ты – вряд ли, потому что как бы я, ты и как бы я тебя в себе содержу – всю твою природу. Она составляет одну маленькую там песчиночку от того, что есть во мне, понимаешь? Вот и все.
                    """, isIncoming: false, date: Date.dateFromCustomStringString(customString: "")),
            ChatMessage(text: "Поэтому давай ступай, езжай, а я пошел наслаждаться, нахуй, блять, прекрасным осенним закатом, блять, на берегу теплой южной реки. Все, пиздуй-борозду и я попиздил нахуй.", isIncoming: true, date: Date.dateFromCustomStringString(customString: ""))
        ]
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
        return chatMessages[section].count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ChatMessageCell
    //    let chatMessage = chatMessages[indexPath.row]
        let chatMessage = chatMessages[indexPath.section][indexPath.row]
        cell.chatMessage = chatMessage
        
        
        //      cell.messageLabel.text = chatMessage.text
        //      cell.isIncoming = chatMessage.isIncoming
        return cell
    }
    // Section title
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
       if let firstMessageInSection = chatMessages[section].first {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        let dateString = dateFormatter.string(from: firstMessageInSection.date)
        return dateString
        }
        
        return "Section \(Date())"
    }
    
    // repeating sections of messages
    override func numberOfSections(in tableView: UITableView) -> Int {
        return chatMessages.count
    }
    

}

