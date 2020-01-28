//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Maitree Bain on 1/28/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPurple
    }
    
    private func configureNavBar() {
        //setting title for nav bar
        navigationItem.title = "Programmatic UI"
        //adding a UIBarbuttonItem to the nav bar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(showSettings(_:)))
    }
    
    @objc private func showSettings(_ sender: UIBarButtonItem) {
        print("show settings")
    }
    
}

