//
//  TodoCell.swift
//  TODOList
//
//  Created by Nojood Aljuaid  on 13/06/1445 AH.
//

import UIKit

class TodoCell: UITableViewCell {

    @IBOutlet weak var todoTitleLable: UILabel!
    @IBOutlet weak var todoImageView: UIImageView!
    @IBOutlet weak var todoCreationDateLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
