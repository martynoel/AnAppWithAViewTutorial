//
//  ChangeColorView.swift
//  AnAppWithAViewTutorial
//
//  Created by Mimi Chenyao on 4/19/18.
//  Copyright © 2018 Mimi Chenyao. All rights reserved.
//

import UIKit

public class ChangeColorView: UIView {
    
    // MARK: Subviews
    
    let purpleButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitle("Purple Background", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 4.0
        button.layer.cornerRadius = 7
        
        return button
    }()
    
    let resetButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        button.layer.borderColor = UIColor.cyan.cgColor
        button.layer.borderWidth = 4.0
        button.layer.cornerRadius = 7
        button.layer.masksToBounds = true
        
        return button
    }()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = .black
        
        self.addSubview(purpleButton)
        self.addSubview(resetButton)
        
        setUpPurpleButton()
        setUpResetButton()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Subview setup
    
    func setUpPurpleButton() {
        
        purpleButton.translatesAutoresizingMaskIntoConstraints = false
        
        purpleButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        
        purpleButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        purpleButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        purpleButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func setUpResetButton() {
        
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        resetButton.centerXAnchor.constraint(equalTo: purpleButton.centerXAnchor).isActive = true
        resetButton.topAnchor.constraint(equalTo: purpleButton.bottomAnchor, constant: 20).isActive = true
        
        resetButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        resetButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
}
