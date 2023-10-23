//
//  ViewController.swift
//  HomeworkMenu
//
//  Created by Vlad on 23.10.23.
//

import UIKit


class Menu {
    
    let snacks: MenuItem
    let mainMenu: MenuItem
    let beverages: MenuItem
    let dessert: MenuItem
    
    init(snacks: MenuItem, mainMenu: MenuItem, beverages: MenuItem, dessert: MenuItem) {
        self.snacks = snacks
        self.mainMenu = mainMenu
        self.beverages = beverages
        self.dessert = dessert
    }
    
}



class MenuItem{
    
    var name: String
    var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let sendwitch = MenuItem(name: "Бутерброд с курицей", price: 7)
        let steik = MenuItem(name: "Стэйк средней прожарки", price: 40)
        let coffee = MenuItem(name: "Латте", price: 8)
        let napoleon = MenuItem(name: "Чизкейк", price: 10)
        
        
        
        
        func printMenuItem(menuItem: MenuItem) {
            print("\(menuItem.name) \(menuItem.price) рублей")
        }
        
        
        printMenuItem(menuItem: sendwitch)
        
        
        
        
        
    }


}

