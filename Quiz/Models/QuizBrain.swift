//
//  QuizBrain.swift
//  Quiz
//
//  Created by elena on 08.05.2022.
//

import UIKit

struct QuizBrain {
    let quiz = [

        Question(q: "Самое глубокое озеро?", a: ["Байкал", "Иссык Куль", "Телецкое"], correctAnswer: "Байкал"),
        Question(q: "Высокая гора в мире?", a: ["Эльбрус", "Уральские горы", "Эверест"], correctAnswer: "Эверест"),
        Question(q: "Когда отмечают старый Новый год?", a: ["с 13 на 14 апреля", "с 12 на 13 февраля", "с 13 на 14 января"], correctAnswer: "с 13 на 14 января"),
        Question(q: "Мои года - мое ...?", a: ["Здоровье", "Богатство", "Время"], correctAnswer: "Богатство"),
        Question(q: "Назовите, как именовали корабли США, созданные с целью полета на Луну?", a: ["Аполлон", "Юпитер", "NASA"], correctAnswer: "Аполлон"),
        Question(q: "Продолжите песню: Мы свое призванье не забудем, смех и радость мы... ", a: ["уносим в дом", "с собой возьмем", "приносим людям"], correctAnswer: "приносим людям"),
        Question(q: "Что носит дьявол в известном фильме?", a: ["Gucci", "Prada", "Chanel"], correctAnswer: "Prada"),
        Question(q: "Вместе с рюмкой каньяка в России обычно просят...", a: ["Дольку лимона", "Маринованные огурчики", "Десертик"], correctAnswer: "Дольку лимона"),
        Question(q: "На какой вопрос не мог получить ответ Гамлет?", a: ["Жить или не жить?", "Любить или не любить?", "Быть или не быть?"], correctAnswer: "Быть или не быть?"),
        Question(q: "В каком месяце 28 дней?", a: ["В феврале", "В каждом", "В сентябре"], correctAnswer: "В каждом"),
        Question(q: "Эта фигура на шахматной доске делает только диагональный ход. Какая?", a: ["Слон", "Лошадь", "Пешка"], correctAnswer: "Слон"),
        Question(q: "Место жительства волка - это...", a: ["Логово", "Берлога", "Норка"], correctAnswer: "Логово"),
        Question(q: "Согласно извесной пословице, в споре рождается...", a: ["Идея", "Истина", "Ложь"], correctAnswer: "Истина"),
        Question(q: "Как называется элемент, который на себе несет улитка?", a: ["Панцирь", "Ракушка", "Раковина"], correctAnswer: "Раковина"),
        Question(q: "Имя главного персонажа Матрицы", a: ["Джон Сноу", "Лео", "Нео"], correctAnswer: "Нео")
    ]

    var questionNumber = 0
    var score = 0

    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }

    func getScore() -> Int {
        return score
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text

    }

    func getAnswer() -> [String] {
        return quiz[questionNumber].answer
    }

    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count - 1)
        return progress
    }
}
