//
//  ViewController.swift
//  week3
//
//  Created by NG CHUN KEUNG on 30/5/18.
//  Copyright © 2018 NG CHUN KEUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var imgs : [UIImage] = [
        UIImage(named: "qr")!,
        UIImage(named: "x")!,
        UIImage(named: "o29")!,
        UIImage(named: "IwsS9wfm")!,
        UIImage(named: "xbox-x")!,
        
        ]
    func setButton() {
        buttons[0].tag = 1
        buttons[1].tag = 2
        buttons[2].tag = 2
        buttons[3].tag = 2
        buttons[4].tag = 3
        buttons[5].tag = 1
        buttons[6].tag = 3
        buttons[7].tag = 4
        buttons[8].tag = 1
        buttons[9].tag = 2
        buttons[10].tag = 1
        buttons[11].tag = 4
        buttons[12].tag = 4
        buttons[13].tag = 3
        buttons[14].tag = 3
        buttons[15].tag = 4
    }
    
    @IBOutlet var buttons: [UIButton]!
    var lastButton : UIButton?
    @IBOutlet weak var score: UILabel!
    @IBAction func buttonTouched(_ sender: UIButton) {
        
        if sender.tag == -1 { return }
        sender.setImage(imgs[sender.tag], for: .normal)
        
        
        if lastButton == nil{
            lastButton = sender
        }
        else if lastButton != nil &&
            sender.tag == lastButton!.tag {
            score.text = "\(Int(score.text!)! + 1)"
            
            sender.tag = -1
            lastButton!.tag = -1
            lastButton = nil
        }
        else{
            sender.setImage(imgs[0], for: .normal)
            lastButton!.setImage(imgs[0], for: .normal)
            
            lastButton = nil
        }
        
        
    }
    @IBAction func resetBoard(_ sender: UIButton) {
        for button in buttons {
            button.setImage(imgs[0], for: .normal)
        }
        score.text = "0"
        setButton()
        
    }
    
    
}

