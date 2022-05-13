//
//  OpenViewController.swift
//  Quiz
//
//  Created by elena on 11.05.2022.
//

import UIKit

class OpenViewController: UIViewController {

    private lazy var newBut: UIButton = {
        let button = UIButton()
        settingButton(button: button)
        button.setTitle("Пройти квест", for: .normal)
        button.addTarget(self, action: #selector(buttonNew), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray

        setupView()
    }
    
    private func setupView() {
        view.addSubview(newBut)

        let centerXConstr = self.newBut.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let centerYConstr = self.newBut.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        let leading = self.newBut.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let trailing = self.newBut.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        let heightConstr = self.newBut.heightAnchor.constraint(equalToConstant: 50)

        NSLayoutConstraint.activate([centerXConstr, centerYConstr, leading, trailing, heightConstr])
    }

    @objc private func buttonNew() {
        let qv = QuestionViewController()
        self.navigationController?.pushViewController(qv, animated: true)
    }
}
