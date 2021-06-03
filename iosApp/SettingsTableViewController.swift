//
//  SettingsTableViewController.swift
//  iosApp
//
//  Created by Admin on 23.04.2021.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    let testString = "testString"
    let nameKey = "nameKey"
    let soundKey = "soundKey"
    let volKey = "volKey"
    
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var volSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSettings()
        //Fors unrepp
//        if UserDefaults.standard.string(forKey: testString) != nil {
//            print(UserDefaults.standard.string(forKey: testString)!)
//        }
        
        //Optional binding
//        if let name = UserDefaults.standard.string(forKey: nameKey) {
//            print(name)
//        }
    }
    
    func loadSettings(){
        if let name = UserDefaults.standard.string(forKey: nameKey) {
            nameField.text = name
        }
        soundSwitch.isOn = UserDefaults.standard.bool(forKey: soundKey)
        volSlider.value = UserDefaults.standard.float(forKey: volKey)
        
    }
    @IBAction func changeNameAction(_ sender: UITextField) {
        if(sender.text != nil) {
            UserDefaults.standard.set(sender.text, forKey: nameKey)
        }
        
    }
    @IBAction func soundAction(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: soundKey)
    }
    @IBAction func volAction(_ sender: UISlider) {
        UserDefaults.standard.set(sender.value, forKey: volKey)
    }
}
