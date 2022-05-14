//
//  OpenViewController.swift
//  Quiz
//
//  Created by elena on 11.05.2022.
//

import UIKit

class OpenViewController: UIViewController {

    private lazy var openButton: UIButton = {
        let button = UIButton()
        settingButton(button: button)
        button.setTitle("Пройти квест", for: .normal)
        button.addTarget(self, action: #selector(buttonNew), for: .touchUpInside)
        return button
    }()

    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "open")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }
    
    private func setupView() {
        view.addSubview(imageView)
        view.addSubview(openButton)

        let topImageViewConstraint = self.imageView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let leadingImageViewConstraint = self.imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let trailingImageViewConstraint = self.imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let bottomImageViewConstraint = self.imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        let centerXButtonConstraint = self.openButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let leadingButtonConstraint = self.openButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let trailingButtonConstraint = self.openButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        let bottomButtonConstraint = self.openButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -200)
        let heightButtonConstraint = self.openButton.heightAnchor.constraint(equalToConstant: 50)

        NSLayoutConstraint.activate([topImageViewConstraint, leadingImageViewConstraint, trailingImageViewConstraint, bottomImageViewConstraint, centerXButtonConstraint, leadingButtonConstraint, trailingButtonConstraint, heightButtonConstraint, bottomButtonConstraint])
    }

    @objc private func buttonNew() {
        let qv = QuestionViewController()
        self.navigationController?.pushViewController(qv, animated: true)
    }
}
