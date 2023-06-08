//
//  ViewController.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func calcuateButtonTouched(_ sender: Any) {
        if let text = textField.text, let a = Double(text) {
            let TC = TriangleController()
            heightLabel.text = TC.getHeightWithSide(a)
            areaLabel.text = TC.getAreatWithSide(a)
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        guard let oldText = textField.text else {
            return false
        }
        
        let newText = (oldText as NSString).replacingCharacters(in: range, with: string)
        
        calculateButton.isEnabled = (!newText.isEmpty && newText.containsOnlyDigits)
        return true
    }
    
}

