//
//  ListViewCell.swift
//  ToDoApp
//
//  Created by Shahina Kassim on 16/11/23.
//

import UIKit

class ListViewCell: UITableViewCell {

    @IBOutlet weak var imageToDO: UIImageView!
    @IBOutlet weak var detailLAbel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
      //  makeImageRound()
//        // Initialization code
      
    }
     func makeImageRound(){
        self.imageToDO.layer.cornerRadius = self.imageToDO.frame.width / 2
        self.imageToDO.layer.masksToBounds = true
        imageToDO.contentMode = .scaleAspectFill
        
    }
   func makeImageSquare(){
            self.imageToDO.layer.cornerRadius = 0
            self.imageToDO.layer.masksToBounds = true
        imageToDO.contentMode = .scaleAspectFill
         
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
