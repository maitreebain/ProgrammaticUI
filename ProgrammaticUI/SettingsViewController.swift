//
//  SettingsViewController.swift
//  ProgrammaticUI
//
//  Created by Maitree Bain on 1/28/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    private let settingsView = SettingsView()
    
    //data for pickerview
    private let colors = ["Red", "Green","Blue", "White"]
    
    override func loadView() {
        view = settingsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure delegate and datasource of pickerview
        settingsView.pickerView.dataSource = self
        settingsView.pickerView.delegate = self
        
        //userdefaults needs index later
        let colorName = colors[0]
        view.backgroundColor = UIColor(named: colorName)
    }
    


}

extension SettingsViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    
}

extension SettingsViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let colorName = colors[row]
        
        view.backgroundColor = UIColor(named: colorName)
    }
    
}

