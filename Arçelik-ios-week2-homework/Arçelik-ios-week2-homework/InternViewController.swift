//
//  InternViewController.swift
//  Arçelik-ios-week2-homework
//
//  Created by Compro on 1.06.2022.
//

import UIKit

class InternViewController: UIViewController {
    
    

    @IBOutlet weak var resultBMILabel: UILabel!
    
    var bossVC : BossViewController!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bossVC.bmiDelegate = self
        
    }
    

    
    

}

extension InternViewController : BMIDataSenderDelegate {
    
    func calculateBMI(weight: String, height: String) {
        
        var weightInt = Double(weight)!
        var heightInt = Double(height)!
        
        var bmi = ((weightInt / heightInt) / heightInt ) * 10000
        
        resultBMILabel.text = String(bmi) ?? ""
        
    }
    
}
