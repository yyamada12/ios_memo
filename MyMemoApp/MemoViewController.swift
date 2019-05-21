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
        if let memo = memo {
            memoTextField.text = memo
            navigationItem.title = "Edit Memo"
        }
        updateSaveButtonState()
    }
    
    private func updateSaveButtonState() {
        let memo = memoTextField.text ?? ""
        saveButton.isEnabled = !memo.isEmpty
    }
    
    @IBAction func memoTextFieldChanged(_ sender: Any) {
        updateSaveButtonState()
    }
    
    @IBAction func cancel(_ sender: Any) {
        if presentingViewController is UINavigationController {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === self.saveButton else {
            return
        }
        memo = memoTextField.text ?? ""
    }
        
}
