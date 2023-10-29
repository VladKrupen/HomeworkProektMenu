//
//  ViewController.swift
//  HomeworkMenu
//
//  Created by Vlad on 23.10.23.
//

import UIKit

class Singletone {
    
    static let shared = Singletone()
    var totalPrice: Int = 0
    private init() {}
    
    func increaseTotalPrice(price: Int) {
        totalPrice += price
    }
}


class Menu {
    
    let snacks: MenuItem
    let mainMenu: MenuItem
    let beverages: [MenuItem]
    let dessert: MenuItem
    
    init(snacks: MenuItem, mainMenu: MenuItem, beverages: [MenuItem], dessert: MenuItem) {
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


class Sandwitch: MenuItem {
        
    override init(name: String, price: Int) {
        super.init(name: name, price: price)
    }
        
}
    
    
class Steik: MenuItem {
        
    override init(name: String, price: Int) {
        super.init(name: name, price: price)
    }
        
}
    
class Coffee: MenuItem {
        
    override init(name: String, price: Int) {
        super.init(name: name, price: price)
    }
        
}
    
    
class Napoleon: MenuItem {
        
    override init(name: String, price: Int) {
        super.init(name: name, price: price)
    }
        
}
    

let sendwitch = Sandwitch(name: "Бутерброд с курицей", price: 7)
let steik = Steik(name: "Стэйк средней прожарки", price: 40)
let coffeeLatte = Coffee(name: "Латте", price: 8)
let napoleon = Napoleon(name: "Наполеон", price: 10)
let coffeeAmericano = Coffee(name: "Американо", price: 10)

func printMenuItem(menuItem: MenuItem) {
    print("\(menuItem.name) \(menuItem.price) рублей")
}

let menu = Menu(snacks: sendwitch, mainMenu: steik, beverages: [coffeeLatte, coffeeAmericano], dessert: napoleon)



class ViewController: UIViewController {
    
    let textLabel = UILabel()
    
    let buttonSendwitch = {
        let buttonSendwitch = UIButton(type: .system)
        buttonSendwitch.setTitle(menu.snacks.name, for: .normal)
        return buttonSendwitch
    }()
    let buttonSteik = {
        let buttonSteik = UIButton(type: .system)
        buttonSteik.setTitle(menu.mainMenu.name, for: .normal)
        return buttonSteik
    }()
    let buttonCoffeeLatte = {
        let buttonCoffeeLatte = UIButton(type: .system)
        buttonCoffeeLatte.setTitle(menu.beverages[0].name, for: .normal)
        return buttonCoffeeLatte
    }()
    let buttonNapoleon = {
        let buttonNapoleon = UIButton(type: .system)
        buttonNapoleon.setTitle(menu.dessert.name, for: .normal)
        return buttonNapoleon
    }()
    let buttonCoffeeAmericano = {
        let buttonCoffeeAmericano = UIButton(type: .system)
        buttonCoffeeAmericano.setTitle(menu.beverages[1].name, for: .normal)
        return buttonCoffeeAmericano
    }()
    let buttonStart = {
        let buttonStart = UIButton(type: .system)
        buttonStart.setTitle("Start", for: .normal)
        return buttonStart
    }()
    let buttonEnd = {
        let buttonEnd = UIButton(type: .system)
        buttonEnd.setTitle("End", for: .normal)
        return buttonEnd
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemTeal
        
        view.addSubview(buttonSendwitch)
        view.addSubview(buttonSteik)
        view.addSubview(buttonCoffeeLatte)
        view.addSubview(buttonNapoleon)
        view.addSubview(buttonCoffeeAmericano)
        view.addSubview(buttonStart)
        view.addSubview(buttonEnd)
        view.addSubview(textLabel)
        
        textLabel.text = "\(Singletone.shared.totalPrice) руб."
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
     
        
        buttonCoffeeLatte.tintColor = .purple
        buttonCoffeeLatte.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonCoffeeLatte.translatesAutoresizingMaskIntoConstraints = false
        buttonCoffeeLatte.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCoffeeLatte.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        buttonSteik.tintColor = .purple
        buttonSteik.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonSteik.translatesAutoresizingMaskIntoConstraints = false
        buttonSteik.centerXAnchor.constraint(equalTo: buttonCoffeeLatte.centerXAnchor).isActive = true
        buttonSteik.centerYAnchor.constraint(equalTo: buttonCoffeeLatte.centerYAnchor, constant: -50).isActive = true
        
        buttonSendwitch.tintColor = .purple
        buttonSendwitch.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonSendwitch.translatesAutoresizingMaskIntoConstraints = false
        buttonSendwitch.centerXAnchor.constraint(equalTo: buttonSteik.centerXAnchor).isActive = true
        buttonSendwitch.centerYAnchor.constraint(equalTo: buttonSteik.centerYAnchor, constant: -50).isActive = true
        
        buttonNapoleon.tintColor = .purple
        buttonNapoleon.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonNapoleon.translatesAutoresizingMaskIntoConstraints = false
        buttonNapoleon.centerXAnchor.constraint(equalTo: buttonCoffeeLatte.centerXAnchor).isActive = true
        buttonNapoleon.centerYAnchor.constraint(equalTo: buttonCoffeeLatte.centerYAnchor, constant: 50).isActive = true
        
        buttonCoffeeAmericano.tintColor = .purple
        buttonCoffeeAmericano.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        buttonCoffeeAmericano.translatesAutoresizingMaskIntoConstraints = false
        buttonCoffeeAmericano.centerXAnchor.constraint(equalTo: buttonNapoleon.centerXAnchor).isActive = true
        buttonCoffeeAmericano.centerYAnchor.constraint(equalTo: buttonNapoleon.centerYAnchor, constant: 50).isActive = true
        
        buttonStart.backgroundColor = .green
        buttonStart.layer.cornerRadius = 15
        buttonStart.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        buttonStart.translatesAutoresizingMaskIntoConstraints = false
        buttonStart.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        buttonStart.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 40).isActive = true
        buttonStart.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        buttonEnd.backgroundColor = .gray
        buttonEnd.layer.cornerRadius = 15
        buttonEnd.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        buttonEnd.translatesAutoresizingMaskIntoConstraints = false
        buttonEnd.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        buttonEnd.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -40).isActive = true
        buttonEnd.widthAnchor.constraint(equalToConstant: 100).isActive = true


        buttonSendwitch.addTarget(self, action: #selector(buttonSendwitchTapped), for: .touchUpInside)
        
        buttonSteik.addTarget(self, action: #selector(buttonSteikTapped), for: .touchUpInside)
        
        buttonCoffeeLatte.addTarget(self, action: #selector(buttonCoffeeLatteTapped), for: .touchUpInside)
        
        buttonNapoleon.addTarget(self, action: #selector(buttonNapoleonTapped), for: .touchUpInside)
        
        buttonCoffeeAmericano.addTarget(self, action: #selector(buttonCoffeAmericanoTapped), for: .touchUpInside)
        
        buttonStart.addTarget(self, action: #selector(buttonStartTapped), for: .touchUpInside)
        
        buttonEnd.addTarget(self, action: #selector(buttonEndTapped), for: .touchUpInside)
        
        
        

        // Do any additional setup after loading the view.

                
        
        }
    
    @objc func buttonSendwitchTapped(_ sender: UIButton) {
        Singletone.shared.increaseTotalPrice(price: menu.snacks.price)
        printMenuItem(menuItem: menu.snacks)
    }
    
    @objc func buttonSteikTapped(_ sender: UIButton) {
        Singletone.shared.increaseTotalPrice(price: menu.mainMenu.price)
        printMenuItem(menuItem: menu.mainMenu)
    }
    
    @objc func buttonCoffeeLatteTapped(_ sender: UIButton) {
        Singletone.shared.increaseTotalPrice(price: menu.beverages[0].price)
        printMenuItem(menuItem: menu.beverages[0])
    }
    
    @objc func buttonNapoleonTapped(_ sender: UIButton) {
        Singletone.shared.increaseTotalPrice(price: menu.dessert.price)
        printMenuItem(menuItem: menu.dessert)
    }
    
    @objc func buttonCoffeAmericanoTapped(_ sender: UIButton) {
        Singletone.shared.increaseTotalPrice(price: menu.beverages[1].price)
        printMenuItem(menuItem: menu.beverages[1])
    }
    
    @objc func buttonStartTapped(_ sender: UIButton) {
        buttonStart.backgroundColor = .gray
        buttonEnd.backgroundColor = .red
        Singletone.shared.totalPrice = 0
        textLabel.text = "\(Singletone.shared.totalPrice) руб."
        
    }
    
    @objc func buttonEndTapped(_ sender: UIButton) {
        buttonEnd.backgroundColor = .gray
        buttonStart.backgroundColor = .green
        print(Singletone.shared.totalPrice)
        textLabel.text = "\(Singletone.shared.totalPrice) руб."
    }



}

