//
//  ModelUser.swift
//  iosApp
//
//  Created by Admin on 05.05.2021.
//

import Foundation
import UIKit

class ModelUser {
    var users = [[User]]()
    init() {
        setup()
    }
    
    func setup(){
        let man1 = User(name: "Nikolai", city: "Moskva", image: UIImage(named: "man")!, gender: .male)
        let man2 = User(name: "Petro", city: "Yfa", image: UIImage(named: "man")!, gender: .male)
        
        let manArray = [man1,man2]
        
        let woman1 = User(name: "Nina", city: "Lvov", image: UIImage(named: "woman")!, gender: .female)
        let woman2 = User(name: "Anna", city: "Kiev", image: UIImage(named: "woman")!, gender: .female)
        
        let womanArray = [woman1,woman2]
        
        users.append(manArray)
        users.append(womanArray)

    }
}
