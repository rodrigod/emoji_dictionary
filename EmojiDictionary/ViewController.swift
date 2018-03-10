//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Rodrigo Diaz on 2/25/18.
//  Copyright © 2018 Rodrigo Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
UITableViewDelegate{
    
    var emojis : [Emoji] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].theEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    func makeEmojiList() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.theEmoji = "😘"
        emoji1.category = "Face"
        emoji1.descritpion = "Kiss"
        emoji1.originYear = 2005
        
        let emoji2 = Emoji()
        emoji2.theEmoji = "🤪"
        emoji2.category = "Face"
        emoji2.descritpion = "Goofy"
        emoji2.originYear = 2006
        
        let emoji3 = Emoji()
        emoji3.theEmoji = "🤩"
        emoji3.category = "Face"
        emoji3.descritpion = "Upside down"
        emoji3.originYear = 2007
        
        let emoji4 = Emoji()
        emoji4.theEmoji = "😱"
        emoji4.category = "Face"
        emoji4.descritpion = "Fear"
        emoji4.originYear = 2008
        
        return [emoji1, emoji2, emoji3, emoji4]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        print(sender!)
    }
    

    @IBOutlet weak var emojiTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiTable.dataSource = self
        emojiTable.delegate = self
        emojis = makeEmojiList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

