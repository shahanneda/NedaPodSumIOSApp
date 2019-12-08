//
//  FirstViewController.swift
//  NedaPodSum
//
//  Created by Shahan Nedadahandeh on 2019-12-07.
//  Copyright © 2019 Shahan Nedadahandeh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController ,UITextFieldDelegate,UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var textField: UITextField!
    
    var currentNum = 0;
    var options = ["NPS1" , "NPS2"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.dataSource = self;
        picker.delegate = self;
        textField.delegate = self
        textField.keyboardType = .numberPad
        print("test");

    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
         let characterSet = CharacterSet(charactersIn: string)
         return allowedCharacters.isSuperset(of: characterSet)
        // Return true so the text field will be changed
    }
    @IBAction func onChangeNum(_ sender: UITextField) {
        currentNum = Int((sender.text ?? "0")) ?? 0;
        print(currentNum);
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
    }
}

