//
//  ViewController.swift
//  jokenpoViewCode-2.0
//
//  Created by Kleiton Mendes on 06/07/22.
//

import UIKit

class View: ViewElements, ViewModel {

    
    override func viewDidLoad() {
        super.viewDidLoad()
                
//        view.addSubview(tittleLabel)
//        view.addSubview(buttonStackView)
//        view.addSubview(stoneButton)
//        view.addSubview(paperButton)
//        view.addSubview(scissorsButton)
        view.addSubViews([tittleLabel, buttonStackView, stoneButton, paperButton, scissorsButton])
        view.backgroundColor = .blue
        
        stoneButton.addTarget(self, action: #selector(stoneButtonAction), for: .touchUpInside)
        paperButton.addTarget(self, action: #selector(paperButtonAction), for: .touchUpInside)
        scissorsButton.addTarget(self, action: #selector(scissorsButtonAction), for: .touchUpInside)
        
        view.addConstraints([
        
            tittleLabel.constraintToItem(.top, view.safeAreaLayoutGuide, 0),
            tittleLabel.constraintToItem(.centerX, view, 0),
            
            buttonStackView.constraintToItemOutside(.top, tittleLabel, 50),
            buttonStackView.constraintToItem(.bottom, view, -20),
            buttonStackView.constraintToItem(.leading, view, 20),
            buttonStackView.constraintToItem(.trailing, view, -20),
            
            stoneButton.heightAnchor.constraint(equalToConstant: 64),
            stoneButton.widthAnchor.constraint(equalToConstant: 64),
            paperButton.heightAnchor.constraint(equalToConstant: 64),
            paperButton.widthAnchor.constraint(equalToConstant: 64),
            scissorsButton.heightAnchor.constraint(equalToConstant: 64),
            scissorsButton.widthAnchor.constraint(equalToConstant: 64),
            
            playerActionEffect.heightAnchor.constraint(equalToConstant: 128),
            playerActionEffect.widthAnchor.constraint(equalToConstant: 128),
            
            cpuActionEffect.heightAnchor.constraint(equalToConstant: 128),
            cpuActionEffect.widthAnchor.constraint(equalToConstant: 128),

//        NSLayoutConstraint(item: tittleLabel,
//                           attribute: .centerX,
//                           relatedBy: .equal,
//                           toItem: view.safeAreaLayoutGuide,
//                           attribute: .top,
//                           multiplier: 1,
//                           constant: 0),
//
//        NSLayoutConstraint(item: tittleLabel,
//                           attribute: .centerX,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .top,
//                           multiplier: 1,
//                           constant: 0),
            
        ])
    }

    @objc func stoneButtonAction() {
        playerActionEffect.image = UIImage(named: "pedra")
    }
    
    @objc func paperButtonAction() {
        playerActionEffect.image = UIImage(named: "papel")
    }
    
    @objc func scissorsButtonAction() {
        playerActionEffect.image = UIImage(named: "tesoura")
    }

}

