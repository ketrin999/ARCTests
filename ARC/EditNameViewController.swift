//
//  SecondViewController.swift
//  ARC
//
//  Created by Ekaterina Yashunina on 06.09.2023.
//

import UIKit

class EditNameViewController: UIViewController {

    @IBOutlet weak var editNameTextField: UITextField!

    var delegate: EditNameDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    deinit {
        print("Контроллер EditNameViewController выгрузился из памяти")
    }


    @IBAction func editButtonClick() {
        delegate?.nameChaned(name: editNameTextField.text!)
        navigationController?.popViewController(animated: true)
    }

}
