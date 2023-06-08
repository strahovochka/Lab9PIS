//
//  TrianViewController.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import UIKit

class TrianViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    //private let TVM: TriangleVM
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        textField.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let oldText = textField.text else {
            return false
        }
        
        let newText = (oldText as NSString).replacingCharacters(in: range, with: string)
        if !newText.containsOnlyDigits {
            heightLabel.isHidden = true
            areaLabel.isHidden = true
        } else {
            heightLabel.isHidden = false
            areaLabel.isHidden = false
        }
        return true
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if let side = textField.text, side.containsOnlyDigits {
            let t = TriangleMVVM(a: Double(side) ?? 0)
            heightLabel.text = String(round(t.height * 100) / 100.0)
            areaLabel.text = String(round(t.area * 100) / 100.0)
            
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
