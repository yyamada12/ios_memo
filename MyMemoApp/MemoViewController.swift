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
        saveButton.isEnabled = false
    }
    
    @IBAction func memoTextFieldChanged(_ sender: Any) {
        let memo = memoTextField.text ?? ""
        saveButton.isEnabled = !memo.isEmpty
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === self.saveButton else {
            return
        }
        memo = memoTextField.text ?? ""
    }
        
}
