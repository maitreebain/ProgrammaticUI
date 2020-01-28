//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Maitree Bain on 1/28/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    private let mainView = MainView()
    
    //if doing programmatic UI implement and setup the view
    // in loadView()
    //loadView() gets called before viewDidLoad()
    //loadView() sets up the initial view of the controller
    //do not call super when overriding loadView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
        configureNavBar()
        
        //add target action for reset button
        mainView.resetButton.addTarget(self, action: #selector(resetAppColor(_:)), for: .touchUpInside)
    }
    
    private func configureNavBar() {
        //setting title for nav bar
        navigationItem.title = "Programmatic UI"
        //adding a UIBarbuttonItem to the nav bar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(showSettings(_:)))
    }
    
    @objc private func showSettings(_ sender: UIBarButtonItem) {
        let settingsVC = SettingsViewController()
        navigationController?.pushViewController(settingsVC, animated: true)
        
    }
    
    @objc private func resetAppColor(_ sender: UIButton) {
        print("reset app color")
        
    }
}

