//
//  ViewController.swift
//  homework3
//
//  Created by  Yaroslav on 5.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //        print(Beer.init(nameBeer: "ttysize", countryBeer: "bj", cash: 3.5, battleV: 5.0))
        
        // Do any additional setup after loading the view.
    }
    
    
}

class Beer {
    
    let nameBeer: String
    let countryBeer: String
    let cash: Double
    let battleV: Double
    
    init(nameBeer:String, countryBeer:String, cash: Double, battleV: Double) {
        self.nameBeer = nameBeer
        self.countryBeer = countryBeer
        self.cash = cash
        self.battleV = battleV
        
        
        
        
        
        func infoBeer(infoNameBeer:String, infoCountryBeer:String,infoCashBeer:Double, infoBattleV:Double) -> String {
            
            let info = ("марка пива \(infoNameBeer), производство \(infoCountryBeer), объем бутылки \(infoBattleV), цена за бутылку = \(infoCashBeer)")
            
            return info
            
            
        }
        func heinieken() -> Beer {
            let infoHeiniecen = Beer.init(nameBeer: "heiniecen", countryBeer: "germany", cash: 2.5, battleV: 0.5)
            
            return infoHeiniecen
        }
        
        func zhigul() -> Beer {
            let infoZhigul = Beer.init(nameBeer: "zhigul", countryBeer: "russia", cash: 1.0, battleV: 1.5)
            
            return infoZhigul
        }
    }
    
}

class BeerBar {
    
    var pivko: [Beer]
    
    
    ////    ОБЪЕКТ КЛАССА ШАРЕД
    static let shared: Beer = Beer(nameBeer: "hh", countryBeer: "hh", cash: 3.5, battleV: 3.6)
    
    
    private init () {
        self.pivko = []
    }
    
    func addPivko() {
        let pivko = Beer(nameBeer: "pivko", countryBeer: "coyntru", cash: 1.0, battleV: 1.0)
        self.pivko.append(pivko)
    }
    
}

