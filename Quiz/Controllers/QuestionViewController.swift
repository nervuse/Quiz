//
//  ViewController.swift
//  Quiz
//
//  Created by elena on 06.05.2022.
//

import UIKit

class QuestionViewController: UIViewController {

    var quizBrain = QuizBrain()
    var questionFile = QuestionFile()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(questionFile)
        questionFile.oneButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        questionFile.twoButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        questionFile.threeButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)

        questionFile.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            questionFile.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            questionFile.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            questionFile.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            questionFile.topAnchor.constraint(equalTo: view.topAnchor)
        ])

        updateUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @objc private func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)

        if userGotItRight {
            sender.layer.borderColor = UIColor.green.cgColor
        } else {
            sender.layer.borderColor = UIColor.red.cgColor
        }

        if quizBrain.questionNumber + 1 < quizBrain.quiz.count {
            quizBrain.questionNumber += 1

            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

        } else {
            if quizBrain.score >= 0 && quizBrain.score < 8 {
                let alertView = UIAlertController(style: .alert)
                guard let image = UIImage(named: "eyes") else { return }
                alertView.setViewController(image: image, title: "Упс...!", message: "Вы угадали \(quizBrain.score) из 15")
                alertView.addAlertAction(title: "Выйти") { action in
                    self.navigationController?.pushViewController(OpenViewController(), animated: true)
                }

                alertView.addAlertAction(title: "Повторить") { action in
                    self.navigationController?.pushViewController(QuestionViewController(), animated: true)
                }

                present(alertView, animated: true, completion: nil)
            } else if quizBrain.score >= 8 && quizBrain.score < 15 {
                let alertView = UIAlertController(style: .alert)
                alertView.setViewController(image: UIImage(named: "cry")!, title: "Не грусти!", message: "Вы угадали \(quizBrain.score) из 15")
                alertView.addAlertAction(title: "Выйти") { action in
                    self.navigationController?.pushViewController(OpenViewController(), animated: true)
                }

                alertView.addAlertAction(title: "Повторить") { action in
                    self.navigationController?.pushViewController(QuestionViewController(), animated: true)
                }

                present(alertView, animated: true, completion: nil)
            } else {
                let alertView = UIAlertController(style: .alert)
                alertView.setViewController(image: UIImage(named: "happy")!, title: "Ура!!!", message: "Вы победили!")
                alertView.addAlertAction(title: "Выйти") { action in
                    self.navigationController?.pushViewController(OpenViewController(), animated: true)
                }

                present(alertView, animated: true, completion: nil)
            }
        }
    }

    @objc func updateUI() {
        questionFile.questionLabel.text = quizBrain.getQuestionText()
        let answer = quizBrain.getAnswer()
        questionFile.oneButton.setTitle(answer[0], for: .normal)
        questionFile.twoButton.setTitle(answer[1], for: .normal)
        questionFile.threeButton.setTitle(answer[2], for: .normal)
        questionFile.progressBar.progress = quizBrain.getProgress()
        questionFile.oneButton.layer.borderColor = UIColor.clear.cgColor
        questionFile.twoButton.layer.borderColor = UIColor.clear.cgColor
        questionFile.threeButton.layer.borderColor = UIColor.clear.cgColor
    }
}

