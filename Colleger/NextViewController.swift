//
//  NextViewController.swift
//  Colleger
//
//  Created by fathy  on 7/21/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    var DataBack:((String?)->())?

    
    @IBOutlet weak var TaxtBackData: UITextField!
    
    @IBOutlet weak var comeBack: UILabel!
    var dataCome: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        comeBack.text = dataCome
       


    }
    
    @IBAction func ClickDataBacj(_ sender: Any) {
        
        DataBack?(TaxtBackData.text)
        
        dismiss(animated: true, completion: nil)
    }
    
    


}
