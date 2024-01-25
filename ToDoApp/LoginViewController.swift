//
//  LoginViewController.swift
//  ToDoApp
//
//  Created by Shahina Kassim on 16/11/23.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordFeils: UITextField!
    @IBOutlet weak var userNameFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let userDefaultsUserName = UserDefaults.standard.string(forKey: constants.userName),let userPassword =  UserDefaults.standard.string(forKey: constants.password){
            login(with: userDefaultsUserName, and: userPassword)
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBAction func LoginAction(_ sender: Any) {
            if let userName = userNameFeild.text, let password = passwordFeils.text{
                if (userName == "" || password == ""){
                    Utility.showAlert(viewController: self, title: constants.loginErrorTitle, message: constants.loginErrorMissigMsg)
                }else{
                    login(with: userName, and: password)
                    userNameFeild.text = ""
                    passwordFeils.text = ""
                }
            }else{
                Utility.showAlert(viewController: self, title: constants.loginErrorTitle, message: constants.loginErrorMissigMsg)
            }
        
    }
    
    func login(with userName: String,and password: String){
        if userName == constants.userNameValue && password == constants.passwordValue{
            UserDefaults.standard.setValue(userName, forKey: constants.userName)
            UserDefaults.standard.setValue(password, forKey: constants.password)
            
            if let homeController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController{
                self.navigationController?.pushViewController(homeController, animated: true)
            }
        }else{
            Utility.showAlert(viewController: self, title: constants.loginErrorTitle, message: constants.loginErrorMsg )
        }

    }

}
