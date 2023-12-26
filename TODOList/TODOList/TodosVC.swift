//
//  TodosVC.swift
//  TODOList
//
//  Created by Nojood Aljuaid  on 13/06/1445 AH.
//

import UIKit

class TodosVC: UIViewController {
    var todosArray = [
        Todo(title: "الذهاب إلى النادي" , image: UIImage(named: "Image-1") , details: "الساعة ٤ مساءً"),
        Todo(title: "حضور المعسكر" , image: UIImage(named: "Image-2"), details : "الساعة ٩ صباحًا"),
        Todo(title: "قراءة القرآن" , image: UIImage(named: "Image-3"), details: "قراءة جزء كامل من القرآن الكريم"),
        Todo(title: "حل الواجبات" , image: UIImage(named: "Image-4")),
        Todo(title: "قراءة كتاب" ,image: UIImage(named: "Image-1") , details: "قراءة ٢٠ من الكتاب الحالي ")
    ]
    @IBOutlet weak var todosTableView: UITableView!
       override func viewDidLoad() {
        super.viewDidLoad()
        todosTableView.dataSource = self
           todosTableView.delegate = self
       
    }
    

    
}

extension TodosVC : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todosArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell") as! TodoCell
        cell.todoTitleLable.text = todosArray[indexPath.row].title
        if todosArray[indexPath.row].image != nil {
            cell.todoImageView.image = todosArray[indexPath.row].image
        }else {
            cell.todoImageView.image = UIImage(named: "Image-4")
        }
        cell.todoImageView.layer.cornerRadius = cell.todoImageView.frame.width / 2
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let todo = todosArray[indexPath.row]
        let vc = storyboard?.instantiateViewController(identifier: "DetailsVC") as? TodoDetailsVC
        
        if let ViewController = vc {
            ViewController.todo = todo
            navigationController?.pushViewController(ViewController, animated: true)
        }
    }
    
}
