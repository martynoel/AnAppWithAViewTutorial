//
//  ChangeColorViewController.swift
//  AnAppWithAViewTutorial
//
//  Created by Mimi Chenyao on 4/19/18.
//  Copyright © 2018 Mimi Chenyao. All rights reserved.
//

import UIKit

class ChangeColorViewController: UIViewController {
    
    unowned var changeColorView: ChangeColorView { return self.view as! ChangeColorView }
    
    unowned var purpleButton: UIButton { return changeColorView.purpleButton }
    unowned var resetButton: UIButton { return changeColorView.resetButton }
    
    override func loadView() {
        
        self.view = ChangeColorView()
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.purpleButton.addTarget(self, action: #selector(purpleButtonPressed), for: .touchUpInside)
        self.resetButton.addTarget(self, action: #selector(resetButtonPressed), for: .touchUpInside)
    }

    @objc func purpleButtonPressed() {
        
        changeColorView.backgroundColor = .purple
        
        purpleButton.layer.borderColor = UIColor.white.cgColor
        purpleButton.setTitleColor(.white, for: .normal)
    }
    
    @objc func resetButtonPressed() {
        
        changeColorView.backgroundColor = .black
        
        purpleButton.layer.borderColor = UIColor.purple.cgColor
        purpleButton.setTitleColor(.purple, for: .normal)
    }
}

