//
//  SettingsButton.swift
//  Quiz
//
//  Created by elena on 09.05.2022.
//

import Foundation
import UIKit

func settingButton(button: UIButton) {

    button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
    button.layer.borderWidth = 5.0
    button.layer.borderColor = UIColor.white.cgColor
    button.layer.cornerRadius = 12
    button.layer.shadowOffset = CGSize(width: 4.0, height: 4.0)
    button.layer.shadowColor = UIColor.black.cgColor
    button.layer.shadowOpacity = 0.8
    button.backgroundColor = UIColor(named: "button3")?.withAlphaComponent(0.3)
    button.setTitleColor(UIColor.white, for: .normal)
    button.translatesAutoresizingMaskIntoConstraints = false
    


}
