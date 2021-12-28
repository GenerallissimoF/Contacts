//
//  ContactDetailViewController.swift
//  Contacts
//
//  Created by Ivan Adoniev on 28.12.2021.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactPhoneNumber: UILabel!
    @IBOutlet weak var contactEmailLabel: UILabel!
    
    var detail: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactNameLabel.text = "\((detail?.name ?? "") + " " + (detail?.surname ?? ""))"
        contactPhoneNumber.text = "phone:" + " " + "\(detail?.phone ?? "")"
        contactEmailLabel.text = "email:" + " " + "\(detail?.email ?? "")"
    }
     

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
