//
//  ViewController.swift
//  tableViewCustomCellSample
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    func setupTableView() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let iconXib = UINib(nibName: "CustomCell", bundle: nil)
        tableView.register(iconXib, forCellReuseIdentifier: "Cell")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        cell.update(updateCell: indexPath)
        
//        if indexPath.row == 1 {
//            cell.backgroundColor = UIColor.blue
//        }
//        else {
//            cell.backgroundColor = UIColor.white
//        }
        
        return cell
    }
}

