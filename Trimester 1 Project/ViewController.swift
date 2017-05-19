//
//  ViewController.swift
//  Trimester 1 Project
//
//  Created by Jonathan Lace on 11/18/15.
//  Copyright © 2015 SHP. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController, UITextFieldDelegate
    
{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempLabel.text = "🌤"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var tempLabel: UILabel!

    @IBOutlet var textField: UITextField!
    
    @IBAction func psiToMb(_ sender: AnyObject) {
        
        if let psi = Double(textField.text!) {
            
            let mb =  psi * 1013.25 / 14.7
            let roundedMb = String(format: "%.1f", mb)
            let mbString = "Mb = \(roundedMb)"
            tempLabel.text = mbString
            
        }
        
    }
    
    @IBAction func mbToPSI(_ sender: AnyObject) {
        
        
        if let mb = Double(textField.text!) {
            
        let psi = mb * 14.7 / 1013.25
        let roundedPsi = String(format: "%.1f", psi)
        let psiString = "psi =\(roundedPsi)"
        self.tempLabel.text = psiString
        
        }
    
    }
    
    @IBAction func mbToHG(_ sender: AnyObject) {
        
        if let mb = Double(textField.text!) {
            
            let hg = mb * 29.92 / 1013.25
            let roundedHg = String(format: "%.1f", hg)
            let hgString = "Hg = \(roundedHg)"
            tempLabel.text = hgString
        }
        
    }
    
    
    @IBAction func hgtoMB(_ sender: AnyObject) {
        
        
        if let hg = Double(textField.text!) {
            
            let mb =  hg * 1013.25 / 29.92
            let roundedMb = String(format: "%.1f", mb)
            let mbString = "Mb = \(roundedMb)"
            tempLabel.text = mbString
        }

    }
    
    
    @IBAction func hgToPSI(_ sender: AnyObject) {
        
        
        if let hg = Double(textField.text!) {
            
            
            let psi =  hg * 14.7 / 29.92
            let roundedPsi = String(format: "%.1f", psi)
            let psiString = "psi = \(roundedPsi)"
            tempLabel.text = psiString
        }
    }
    
    
    @IBAction func psiToHG(_ sender: AnyObject) {
        
        if let psi = Double(textField.text!) {
            
            
            let hg =  psi * 29.92 / 14.7
            let roundedHg = String(format: "%.1f", hg)
            let hgString = "Hg = \(roundedHg)"
            tempLabel.text = hgString
        }
        
        
    }
    
    
    
    
    
    
    
    @IBAction func dismissKeyboard(_ sender: AnyObject) {
            
            textField.resignFirstResponder()
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
            tempLabel.text = "🌤"
        
            return true
    }
    
    
    
}


