//
//  Question.swift
//  Quiz
//
//  Created by elena on 08.05.2022.
//

import UIKit

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String

    init(q: String, a: [String], correctAnswer: String ) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
