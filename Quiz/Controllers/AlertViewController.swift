//
//  AlertViewController.swift
//  Quiz
//
//  Created by elena on 12.05.2022.
//

import UIKit

class AlertViewController: UIViewController {

    let alertView = AlertView()
    var alertImage = UIImage()
    var titleText = String()
    var messageText = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setValues()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        preferredContentSize.height = alertView.messageLabel.frame.size.height + alertView.messageLabel.frame.origin.y + 30
    }

    private func setupView() {
        self.view.addSubview(alertView)

        alertView.translatesAutoresizingMaskIntoConstraints = false
        alertView.backgroundColor = .clear

        NSLayoutConstraint.activate([
            alertView.topAnchor.constraint(equalTo: view.topAnchor),
            alertView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            alertView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            alertView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }

    private func setValues() {
        alertView.imageView.image = alertImage
        alertView.titleLabel.text = titleText
        alertView.messageLabel.text = messageText
    }
}
