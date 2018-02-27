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
    
    var emojis = [String]();
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func initEmojis() {
        for i in 0x1F600...0x1F64F {
            let c = String(describing: UnicodeScalar(i)!)
            emojis.append(c)
        }
        
        for i in  0x1F910...0x1F937 {
            let c = String(describing: UnicodeScalar(i)!)
            emojis.append(c)
            
        }
        
    
    }
    

    @IBOutlet weak var emojiTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initEmojis()
        // Do any additional setup after loading the view, typically from a nib.
        emojiTable.dataSource = self
        emojiTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

