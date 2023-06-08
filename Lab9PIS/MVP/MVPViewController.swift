//
//  MVPViewController.swift
//  Lab9PIS
//
//  Created by Jane Strashok on 08.06.2023.
//

import UIKit

class MVPViewController: UIViewController, ViewProtocol, UITextFieldDelegate {
    

    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    private var presenter: TrianglePresenter {
        TrianglePresenter(model: TriangleMVP(), view: self)
    }
    override func viewDidLoad() {
        textField.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setHeight(_ height: Double) {
        heightLabel.text = String(height)
    }
    
    func setArea(_ area: Double) {
        areaLabel.text = String(area)
    }
    

    @IBAction func calculateButtonTouched(_ sender: Any) {
        if let num = textField.text, num.containsOnlyDigits {
            presenter.loadTriangleWith(a: Double(num) ?? 0)
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
