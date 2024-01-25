//
//  HomeViewController.swift
//  ToDoApp
//
//  Created by Shahina Kassim on 16/11/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
       
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: constants.userName)
        UserDefaults.standard.removeObject(forKey: constants.password)
        UserDefaults.standard.synchronize()
        self.navigationController?.popViewController(animated: false)
    }
    
    
}
extension HomeViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! ListViewCell
        cell.detailLAbel.text = "Todo List \(indexPath.row + 1)"
        if let image =  UIImage(named: "Todo")
        {
            cell.imageToDO.image = image
        }
        if indexPath.row % 2 == 0{
            cell.makeImageRound()
        }else{
            cell.makeImageSquare()
        }
        
       
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
}
