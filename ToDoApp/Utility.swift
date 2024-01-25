//
//  Utility.swift
//  ToDoApp
//
//  Created by Shahina Kassim on 16/11/23.
//

import Foundation
import UIKit

struct Utility{
    static func showAlert(viewController:UIViewController, title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        viewController.present(alert, animated: true)
    }
    
}
