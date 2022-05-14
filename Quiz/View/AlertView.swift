//
//  AlertView.swift
//  Quiz
//
//  Created by elena on 12.05.2022.
//

import UIKit

class AlertView: UIView {

    lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        return image
    }()

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()

    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.setupView()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        self.addSubview(imageView)
        self.addSubview(titleLabel)
        self.addSubview(messageLabel)

        let topImageConstraint = self.imageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50)
        let centerXImageConstraint = self.imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        let heightImageConstraint = self.imageView.heightAnchor.constraint(equalToConstant: 100)
        let widthImageConstraint = self.imageView.widthAnchor.constraint(equalToConstant: 100)
        let topTitleLabelConstraint = self.titleLabel.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 30)
        let leadingTitleLabelConstraint = self.titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        let trailingTitleLabelConstraint = self.titleLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        let heightTitleLabelConstraint = self.titleLabel.heightAnchor.constraint(equalToConstant: 21)
        let topMessageLabelConstraint = self.messageLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20)
        let leadingMessageLabelConstraint = self.messageLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        let trailingMessageLabelConstraint = self.messageLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        let heightMessageLabelConstraint = self.messageLabel.heightAnchor.constraint(equalToConstant: 21)

        NSLayoutConstraint.activate([topImageConstraint, centerXImageConstraint, heightImageConstraint, widthImageConstraint, topTitleLabelConstraint, leadingTitleLabelConstraint, trailingTitleLabelConstraint, heightTitleLabelConstraint,  topMessageLabelConstraint, leadingMessageLabelConstraint, trailingMessageLabelConstraint, heightMessageLabelConstraint])
    }
}
