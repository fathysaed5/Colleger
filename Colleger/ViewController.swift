//
//  ViewController.swift
//  Colleger
//
//  Created by fathy  on 7/21/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextField!
    
    @IBOutlet weak var labelView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ClickNext(_ sender: Any) {
        let homePag = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as?NextViewController
        
        homePag?.DataBack = { data in
            self.labelView.text = data
        }
        
        homePag?.dataCome = textView.text
        present(homePag!, animated: true, completion: nil)
    }
}

    
    

