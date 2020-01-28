//
//  MainView.swift
//  ProgrammaticUI
//
//  Created by Maitree Bain on 1/28/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let defaultMessage = "No default color set. Please go to settings."
    
    //create a label
    public lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.backgroundColor = .white
        label.textAlignment = .center
        label.text = defaultMessage
        return label
    }() // () creates and calls at the same time
    
    /*
     var messageLabel: UILabel = {
     let label = UILabel()
     label.text = defaultMessage
     return label
     }()
     */
    //will not compile bc it's not a lazy var
    
    //create a button
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.backgroundColor = .systemPink
        return button
    }()
    
    //init(frame: ) gets called if view is done programmatically
    override init(frame: CGRect){
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    //if this view gets initialized from storyboard
    //this initializer gets called
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setUpMessageLabelConstraints()
        setUpResetButtonConstraints()
    }
    
    private func setUpMessageLabelConstraints() {
        //add the message label to the MainView
        addSubview(messageLabel) //returns the messageLabel we created above
        
        //set constraints for the messageLabel
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //if not in an array
        // messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        
        NSLayoutConstraint.activate([
            // set top anchor 20 points from safe area top
            messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            // set padding at the leading edge for MainView
            messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            // set padding at the trailing edge for MainView
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    private func setUpResetButtonConstraints() {
        //steps for ADDING constraints with code
        //1.
        addSubview(resetButton)
        //2.
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        //3.
        NSLayoutConstraint.activate([
            resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resetButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 40)
        ])
    }
}
