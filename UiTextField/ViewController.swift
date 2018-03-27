//
//  ViewController.swift
//  UiTextField
//
//  Created by D7703_25 on 2018. 3. 22..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var labName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //UITextFieldDelegate 객체와 viewController객체와 연결
        labName.delegate = self
        
        labName.placeholder = "입력을 하세요"
        labName.clearButtonMode = UITextFieldViewMode.whileEditing
        labName.borderStyle = UITextBorderStyle.line
    }

    @IBAction func bt(_ sender: Any) {
        lab.text = "Hello " + labName.text!
        labName.text = ""
        
        labName.resignFirstResponder()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
         labName.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.backgroundColor = UIColor.lightGray
        textField.resignFirstResponder()
        return true
    }
    func textFieldShouldClear
    (_ textField: UITextField) -> Bool {
        labName.backgroundColor = UIColor.yellow
        return true
    }
}

