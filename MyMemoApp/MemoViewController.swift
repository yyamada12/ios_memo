//
//  MemoViewController.swift
//  MyMemoApp
//
//  Created by Yoshinobu Yamada on 2019/05/21.
//  Copyright © 2019 Yoshinobu Yamada. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
    
    var memo: String?

    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === self.saveButton else {
            return
        }
        memo = memoTextField.text ?? ""
    }
        
}
