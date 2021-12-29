//
//  SecondContTableViewController.swift
//  Contacts
//
//  Created by Ivan Adoniev on 28.12.2021.
//

import UIKit

class SecondContTableViewController: UITableViewController {
    
    var human: [Person]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
     
        
        return "не успел разобраться"
       
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return human?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return human?[section].name.count ?? 0
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        let person = human?[indexPath.section]
    
        var content = cell.defaultContentConfiguration()
        content.text = person?.surname
        cell.contentConfiguration = content

        return cell
    }
}

    
