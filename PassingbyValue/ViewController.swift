//
//  ViewController.swift
//  PassingbyValue
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var pickerCountry: UIPickerView!
    var countryList = ["India", "Canada", "USA", "UK", "Nepal", "Srilanka","China"]
    var codeList = ["IN","CA","US","CH","NP"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerCountry.delegate = self
        pickerCountry.dataSource = self
    }

    @IBAction func btnNext(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC") as! SecondViewController
        if let name = self.txtName.text
        {
            secondVC.name = name
            navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
            return self.countryList.count
        }
        return codeList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0
        {
        return countryList[row]
        }
        return codeList[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0
        {
        print(countryList[row])
        }
        print(codeList[row])
    }
    
}
