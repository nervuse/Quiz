//
//  QuestionFile.swift
//  Quiz
//
//  Created by elena on 11.05.2022.
//

import UIKit

class QuestionFile: UIView {
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "color")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }()

    lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()

    lazy var oneButton: UIButton = {
        let button = UIButton()
        settingButton(button: button)
        return button
    }()

    lazy var twoButton: UIButton = {
        let button = UIButton()
        settingButton(button: button)
        return button
    }()

    lazy var threeButton: UIButton = {
        let button = UIButton()
        settingButton(button: button)
        return button
    }()

    lazy var progressBar: UIProgressView = {
        let bar = UIProgressView()
        bar.progressTintColor = .green
        bar.trackTintColor = .white
        bar.progressViewStyle = .bar
        bar.progress = 0.0
        return bar
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
        self.addSubview(stackView)
        self.stackView.addArrangedSubview(questionLabel)
        self.stackView.addArrangedSubview(oneButton)
        self.stackView.addArrangedSubview(twoButton)
        self.stackView.addArrangedSubview(threeButton)
        self.stackView.addArrangedSubview(progressBar)

        let topImageViewConstraint = self.imageView.topAnchor.constraint(equalTo: self.topAnchor)
        let leadingImageViewConstraint = self.imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        let trailingImageViewConstraint = self.imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        let bottomImageViewConstraint = self.imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
  let topStackViewConstraint = self.stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor)
        let leadingStackViewConstraint = self.stackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        let trailingStackViewConstraint = self.stackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        let bottomStackViewConstraint = self.stackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        let heightOneButtonConstraint = self.oneButton.heightAnchor.constraint(equalToConstant: 50)
        let heightTwoButtonConstraint = self.twoButton.heightAnchor.constraint(equalToConstant: 50)
        let heightThreeButtonConstraint = self.threeButton.heightAnchor.constraint(equalToConstant: 50)
        let heightBarConstraint = self.progressBar.heightAnchor.constraint(equalToConstant: 5)

        NSLayoutConstraint.activate([topImageViewConstraint, leadingImageViewConstraint, trailingImageViewConstraint, bottomImageViewConstraint, topStackViewConstraint, leadingStackViewConstraint, trailingStackViewConstraint, bottomStackViewConstraint, heightOneButtonConstraint, heightTwoButtonConstraint, heightThreeButtonConstraint, heightBarConstraint])
    }
}
