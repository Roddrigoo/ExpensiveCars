//
//  Mock.swift
//  Cars
//
//  Created by Rodrigo Rodrigues on 23/11/21.
//

import UIKit

final class Mock {
    
    func loadCars() -> [Car] {
        
        let lamborghini = Car(brand: "Lamborghini", model: "Huracan", year: 2016, price: 700000, image: UIImage(named: "lamborghini")!)
        let bugatti = Car(brand: "Bugatti", model: "Chiron", year: 2019, price: 3000000,image: UIImage(named: "bugatti")!)
        let bmw = Car(brand: "BMW", model: "320i M3", year: 2021, price: 89000, image: UIImage(named: "bmw")!)
        let ford = Car(brand: "Ford-GT", model: "GT 500", year: 2021, price: 2000000, image: UIImage(named: "ford")!)
        let mercedez = Car(brand: "Mercedez-Bens", model: "Brabus AMG GLE Rocket", year: 2021, price: 1300000, image: UIImage(named: "mercedes")!)
        let paganni = Car(brand: "Paganni", model: "Huayra", year: 2021, price: 4000000, image: UIImage(named: "pagani")!)
        
        return [lamborghini, bugatti, bmw, ford, mercedez, paganni]
    }
}
