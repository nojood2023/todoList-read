//
//  TodoDetailsVC.swift
//  TODOList
//
//  Created by Nojood Aljuaid  on 13/06/1445 AH.
//

import UIKit

class TodoDetailsVC: UIViewController {
    var todo : Todo!
    
    @IBOutlet weak var todoImageView: UIImageView!
    @IBOutlet weak var todoTitleLable: UILabel!
    @IBOutlet weak var detailsLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        todoTitleLable.text = todo.title
        if todoImageView.image != nil {
            todoImageView.image = todo.image
        }else {
            todoImageView.image = UIImage(named: "Image-2")
        }
        detailsLable.text = todo.details

        
    }

}
