//
//  CitiesViewController.swift
//  ARC
//
//  Created by Ekaterina Yashunina on 06.09.2023.
//

import UIKit

class CitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var cities: [String] = ["Москва", "Санкт-Петербург"]

    @IBOutlet weak var tableView: UITableView!

    var delegate: CityClickDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CityTableViewCell

        cell.cityNameLabel.text = cities[indexPath.row]

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.cityClicked(cityName: cities[indexPath.row])

        navigationController?.popViewController(animated: true)
    }
}
