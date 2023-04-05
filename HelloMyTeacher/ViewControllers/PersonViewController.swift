//
//  PersonViewController.swift
//  HelloMyTeacher
//
//  Created by Дмитрий Федоров on 05.04.2023.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var name: String!
    var surname: String!
    var position: String!
    var job: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name: \(name ?? "")"
        surnameLabel.text = "Surname: \(surname ?? "")"
        positionLabel.text = "Position: \(position ?? "")"
        jobLabel.text = "Job: \(job ?? "")"
    }
}
