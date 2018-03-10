//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Rodrigo Diaz on 2/27/18.
//  Copyright © 2018 Rodrigo Diaz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()

    @IBOutlet weak var emojiDescriptionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var originYear: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji.theEmoji
        originYear.text = "Birth Year: \(emoji.originYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        emojiDescriptionLabel.text = emoji.descritpion

    
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
