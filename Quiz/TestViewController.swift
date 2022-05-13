//
//  TestViewController.swift
//  Quiz
//
//  Created by elena on 12.05.2022.
//

import UIKit

class TestViewController: UIViewController {


    private lazy var showButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(showAlertAction), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupView()
    }

    @objc private func showAlertAction() {
        showAlertController()
    }

    private func showAlertController() {
        let alertView = UIAlertController(style: .alert)
        alertView.setViewController(image: UIImage(named: "happy")!, title: "Alert", message: "Message Content")
        alertView.addAlertAction(title: "Выйти") { (_) in
        }
        alertView.addAlertAction(title: "Повторить") { (_) in
        }
        present(alertView, animated: true, completion: nil)
    }

    private func setupView() {
        self.view.addSubview(showButton)

        NSLayoutConstraint.activate([
            showButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            showButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            showButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            showButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            showButton.heightAnchor.constraint(equalToConstant: 50)
        ])

    }



}
