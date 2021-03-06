//
//  ViewController.swift
//  UITextField Delegate Test
//
//  Created by D7702_09 on 2018. 3. 22..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var lblH: UILabel!
    @IBOutlet weak var txtF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //UITextFieldDelegate 객체와 veiwController 객체와 연결
        //txtF.delegate = self
        
        txtF.placeholder = "입력을 하세요"
        txtF.clearButtonMode = UITextFieldViewMode.whileEditing
        txtF.borderStyle = UITextBorderStyle.line
    }

    
    @IBAction func btn(_ sender: Any) {
        lblH.text = "Hello " + txtF.text!
        txtF.text = ""
        // 키패드를 내림
        txtF.resignFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        //background의 View를 누르면 키패드가 내려감
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtF.resignFirstResponder()
        //txtF.endEditing(false)
        //view.endEditing(false)
    }
    
    //UITextFieldDelegate 메소드 호출
    // called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        view .backgroundColor = UIColor.yellow
        //txtF.resignFirstResponder()
        txtF.endEditing(false)
        return true
    }
    //delegate method
     func textFieldShouldClear(_ textField: UITextField) -> Bool // called when clear button pressed. return NO to ignore (no notifications)
     {
        view .backgroundColor = UIColor.green
        return true
    }
}

