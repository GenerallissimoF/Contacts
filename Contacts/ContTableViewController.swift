//
//  ContTableViewController.swift
//  Contacts
//
//  Created by Ivan Adoniev on 28.12.2021.
//

import UIKit

class ContTableViewController: UITableViewController {
    var person: [Person]?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    
        return person?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let person = person?[indexPath.row] else { return cell }
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name )" + " " + "\(person.surname )"
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contactDetailVC = segue.destination as? ContactDetailViewController {
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            let contact = person?[indexPath.row]
            contactDetailVC.detail = contact
        }
    }
}
