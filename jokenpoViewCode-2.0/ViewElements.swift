//
//  ViewElements.swift
//  jokenpoViewCode-2.0
//
//  Created by Kleiton Mendes on 06/07/22.
//

import Foundation
import UIKit

class ViewElements: UIViewController {
    
    let tittleLabel: UILabel = {
        let tittleLabel = UILabel()
        tittleLabel.translatesAutoresizingMaskIntoConstraints = false
        tittleLabel.text = "Jokenpo"
        tittleLabel.font = UIFont.systemFont(ofSize: 20)
        return tittleLabel
    }()
    
    let buttonStackView: UIStackView = {
        
        let buttonStackView = UIStackView()
        buttonStackView.backgroundColor = .white
        return buttonStackView
    }()
    
    let stoneButton: UIButton = {
        
        let stoneButton = UIButton()
        stoneButton.setImage(UIImage(named: "pedra"), for: .normal)
        return stoneButton
    }()
    
    let paperButton: UIButton = {
        
        let paperButton = UIButton()
        paperButton.setImage(UIImage(named: "papel"), for: .normal)
        return paperButton
    }()
    
    let scissorsButton: UIButton = {
        
        let scissorsButton = UIButton()
        scissorsButton.setImage(UIImage(named: "tesoura"), for: .normal)
        return scissorsButton
    }()
    
    let playerActionEffect: UIImageView = {
        
        let playerActionEffect = UIImageView()
        return playerActionEffect
    }()
    
    let versusLabel: UILabel = {
        
        let versuslabel = UILabel()
        versuslabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        versuslabel.backgroundColor = .white
        versuslabel.text = "VS"
        versuslabel.textAlignment = .center
        return versuslabel
    }()
    
    let cpuActionEffect: UIImageView = {
        
        let cpuActionEffect = UIImageView()
        cpuActionEffect.image = UIImage(named: "tesoura")
        return cpuActionEffect
    }()
    
    let playStackView: UIStackView = {
        
        let playStackView = UIStackView(arrangedSubviews: [playerActionEffect, versusLabel, cpuActionEffect])
        playStackView.axis = .vertical
        playStackView.spacing = 20
        return playStackView
    }()
    
}
