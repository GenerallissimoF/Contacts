//
//  TabBarViewController.swift
//  Contacts
//
//  Created by Ivan Adoniev on 29.12.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    let man = Person.getPersons()
   
    override func viewDidLoad() {
        super.viewDidLoad()

        let viewControllers = viewControllers
            for viewController in viewControllers! {
                if let contVC = viewController as? ContTableViewController {
                    let contactt = man
                    contVC.person = contactt
                
                } else if let secondVC = viewController as? SecondContTableViewController {
                    let contactt = man
                    secondVC.human = contactt
                }
            }
        }
    }

    

  
//    private func prepare() {
//        if let viewControllers = tabBarController?.viewControllers {
//            for viewController in viewControllers {
//                if let contVC = viewController as? ContTableViewController {
//                    let contactt = man
//                    contVC.person = contactt
//
//                } else if let secondVC = viewController as? SecondContTableViewController {
//                    let contactt = man
//                    secondVC.human = contactt
//                }
//            }
//        }
//    }
//}
//        let tabBarController = segue.destination as! UITabBarController
//        if let contactDetailVC = segue.destination as? ContactDetailViewController {
//            guard let indexPath = tableView.indexPathForSelectedRow else {return}
//            let contact = man[indexPath.row]
//            contactDetailVC.detail = contact
//        } else {
//            let tabBarController = segue.destination as! UITabBarController
//            if let viewControllers = tabBarController.viewControllers {
//                for viewController in viewControllers {
//                    let secondVC = viewController as? SecondContTableViewController
//                    guard let indexPath = tableView.indexPathForSelectedRow else {return}
//                    let contactt = man
//                    secondVC!.human = contactt
//                }
//            }
//        }
//    }
//}
