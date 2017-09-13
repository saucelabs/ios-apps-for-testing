//
//  ViewController.swift
//  httpRequest
//
//  Created by abdulla hawara on 12.09.17.
//  Copyright © 2017 TestObject. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var endpointTextField: UITextField!
    @IBOutlet weak var statusCodeTextField: UILabel!
    @IBOutlet weak var responseContentLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        endpointTextField.delegate = self
        
        activityIndicator.hidesWhenStopped = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()    }
    
    @IBAction func get_button(_ sender: Any) {
        
        // code salad ;)
        
        if endpointTextField.text != ""
        {
            activityIndicator.startAnimating()
            UIApplication.shared.beginIgnoringInteractionEvents()
            
            let url = URL (string: endpointTextField.text!)
            statusCodeTextField.text = ""
            responseContentLable.text = ""
            let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
                DispatchQueue.main.async() {
                    if error == nil
                    {
                        self.statusCodeTextField.text = String((response as! HTTPURLResponse).statusCode)
                        self.responseContentLable.text = String(data: data!, encoding: .ascii)
                    } else {
                        self.statusCodeTextField.text = String((error as! NSError).code)
                        self.responseContentLable.text = String(describing: error)
                    }
                    self.activityIndicator.stopAnimating()
                    UIApplication.shared.endIgnoringInteractionEvents()
                }
            }
            task.resume()
        } else {
            statusCodeTextField.text = ""
            responseContentLable.text = "Endpoint field can't be empty!"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

