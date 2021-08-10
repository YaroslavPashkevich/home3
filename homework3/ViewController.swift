//
//  ViewController.swift
//  homework3
//
//  Created by  Yaroslav on 5.08.21.
//

import UIKit

class ViewController: UIViewController {
    
//    MARK: - IBOutlets
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var nalitPivo: UIButton!
    @IBOutlet weak var zakritBar: UIButton!
    @IBOutlet weak var napisatStatu: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(BeerBar.shared.statistic())
       
    }
   
    @IBAction func but1(_ sender: UIButton) {
        
        
        BeerBar.shared.addPivko(value:Beer.heinieken())
        label1.text = Beer.infoBeer(Beer.heinieken())()
       
    }
    
    @IBAction func nalitPivo(_ sender: UIButton) {
        
        
        if BeerBar.shared.nalitoKlientu() == true {
            
            label2.text = Beer.infoBeer(Beer.heinieken())()
        } else {
            label2.text = "piva net"
        }
           
    }
        
    
    
    @IBAction func zakritBar(_ sender: UIButton) {
        label1.text = "bar zakrit"
    }
    
    
    @IBAction func napisatStatu(_ sender: UIButton) {
        
        
//        тут не понять
        label1.text = Beer.infoBeer(BeerBar.statistic())()

        
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
    }
        func infoBeer() -> String {
            
            return ("марка пива \(nameBeer), производство \(countryBeer), объем бутылки \(battleV), цена за бутылку = \(cash)")
            
        }
    static func heinieken() -> Beer {
        return Beer(nameBeer: "heiniecen", countryBeer: "Germany", cash: 2.5, battleV: 0.5)
        }
        
       static func zhigul() -> Beer {
            return Beer(nameBeer: "zhigul", countryBeer: "russia", cash: 1.0, battleV: 1.5)
        }
    }
    


class BeerBar {
    
    var pivko:([Beer]) = []
    
    ////    ОБЪЕКТ КЛАССА ШАРЕД
    static let shared: BeerBar = BeerBar()
    
    private init () {
        self.pivko = []
    }

    func addPivko(value: Beer) {
        pivko.append(value)
        
    }
   
    
    func nalitoKlientu() -> Bool {
       
            if pivko.count > 0 {
                pivko.removeLast()
                return true
            } else {
                return false
            }
}
    
    
    func endBar() {
       pivko.removeAll()
    }
    
    
    func statistic() -> String {
        var stata = ""
        for value in pivko {

            stata += "\n \(value.infoBeer())"
        }
       return stata

    }

   
}
