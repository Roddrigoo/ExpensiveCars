//
//  ViewController.swift
//  Cars
//
//  Created by Rodrigo Lourenço on 23/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var cars: [Car] = []
    
    @IBOutlet private weak var imgCar: UIImageView!
    @IBOutlet private weak var tbList: UITableView!
    @IBOutlet private weak var lblName: UILabel!
    
    //-----------------------------------------------------------------------------------
    //  MARK: - UIViewController
    //-----------------------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.loadCars()
    }
    
    //-----------------------------------------------------------------------------------
    //  MARK: - UITableView
    //-----------------------------------------------------------------------------------
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCar", for: indexPath)
        cell.textLabel?.text = cars[indexPath.row].brand
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let car = cars[indexPath.row]
        self.showCar(item: car)
    }
    
    //-----------------------------------------------------------------------------------
    //  MARK: - Custom methods
    //-----------------------------------------------------------------------------------
    
    private func loadCars() { // load all cars
        self.cars = Mock().loadCars()
        self.tbList.reloadData()
    }
    
    private func showCar(item: Car) { // show car detail
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        
        let priceString = currencyFormatter.string(from: NSNumber(value: item.price))!
        
        lblName.text = "Brand: \(item.brand) \nModel: \(item.model) \nYear: \(item.year) \nPrice: \(priceString)"
        imgCar.image = item.image
    }
}
