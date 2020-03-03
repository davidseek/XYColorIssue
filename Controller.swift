//
//  Controller.swift
//  XYColorIssue
//
//  Created by David Seek on 3/2/20.
//  Copyright © 2020 David Seek. All rights reserved.
//

import UIKit

class Controller: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataSource = [Int32](repeating: Int32(), count: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(
            UINib.init(nibName: "Cell", bundle: nil),
            forCellReuseIdentifier: "Cell")
    }
}

extension Controller: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        cell.bindViewModel("\(indexPath.row)")
        return cell
    }
}
