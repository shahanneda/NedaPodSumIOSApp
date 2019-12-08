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
    @IBOutlet weak var label: UILabel!
    
    var currentNum = 0;
    var options = ["NPS1" , "NPS2"];
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.dataSource = self;
        picker.delegate = self;
        textField.delegate = self
        textField.keyboardType = .numberPad
    }
    func calcAndUpdate(){
        let nps = NPS2(number: currentNum);
        label.text = "2 * "  + String(nps.numberOfTwo) + " 3 * " + String(nps.numberOfThree);
        
    }
    func NPS2(number num : Int) -> (numberOfTwo : Int, numberOfThree : Int){
        return(6,8);
    }
    @IBAction func onChangeNum(_ sender: UITextField) {
        currentNum = Int((sender.text ?? "0")) ?? 0;
        print(currentNum);
        print(picker.selectedRow(inComponent: 0));
        calcAndUpdate();
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 2;
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options[row]
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits
         let characterSet = CharacterSet(charactersIn: string)
         return allowedCharacters.isSuperset(of: characterSet)
        
    }

}


