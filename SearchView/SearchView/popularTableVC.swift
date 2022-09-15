//
//  popularTableVC.swift
//  SearchView
//
//  Created by 겸 on 2022/09/16.
//

import UIKit

class popularTableVC: UITableViewController{


    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
}
