//
//  FirstViewController.swift
//  ARC
//
//  Created by Ekaterina Yashunina on 06.09.2023.
//

import UIKit

class MyNameViewController: UIViewController, EditNameDelegate {

    @IBOutlet weak var myNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    deinit {
        print("Контроллер MyNameViewController выгрузился из памяти")
    }

    @IBAction func toEditName() {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "EditNameVC") as! EditNameViewController
        viewController.delegate = self

        navigationController?.pushViewController(viewController, animated: true)
    }

    func nameChaned(name: String) {
        myNameLabel.text = name
    }
}
