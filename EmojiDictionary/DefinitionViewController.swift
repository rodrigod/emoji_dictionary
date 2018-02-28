//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Rodrigo Diaz on 2/27/18.
//  Copyright © 2018 Rodrigo Diaz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI!"

    @IBOutlet weak var emojiDescriptionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
    
        if emoji == "😘" {
            emojiDescriptionLabel.text = "Kiss"
    } else if emoji == "🤪" {
        emojiDescriptionLabel.text = "Goofy face"
    } else if emoji == "🤩" {
        emojiDescriptionLabel.text = "upside down"
    } else {
        emojiDescriptionLabel.text = "NA"
    }
    
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
