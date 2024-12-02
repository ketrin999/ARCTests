//
//  CurrentCityViewController.swift
//  ARC
//
//  Created by Ekaterina Yashunina on 06.09.2023.
//

import UIKit

class CurrentCityViewController: UIViewController, CityClickDelegate {

    @IBOutlet weak var currentCity: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func changeCityDidClick() {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "citiecVC") as! CitiesViewController

        viewController.delegate = self

        navigationController?.pushViewController(viewController, animated: true)
    }

    func cityClicked(cityName: String) {
        currentCity.text = cityName
    }
}
