//
//  Question.swift
//  Code History 101
//
//  Created by Pangestu, Priambodo on 11/08/22.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                possibleAnswers: [
                   "Steve Jobs",
                   "Linus Torvalds",
                   "Bill Gates",
                   "Tim Berners-Lee"
                ],
                correctAnswerIndex: 3),
       Question(questionText: "What was the first object oriented programming language?",
                        possibleAnswers: [
                           "Simula",
                           "Python",
                           "Swift",
                           "C"
                        ],
                        correctAnswerIndex: 0),
        Question(questionText: "Who invented the TURING test ?",
                         possibleAnswers: [
                            "Pascal Siakam",
                            "Linus Tech",
                            "Sergey Brein",
                            "Alan Turing"
                         ],
                         correctAnswerIndex: 3),
        Question(questionText: "What was the first computer bug?",
                 possibleAnswers: [
                    "Ant",
                    "Beetle",
                    "Moth",
                    "Fly"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What language did iOS developers use before Swift?",
                 possibleAnswers: [
                    "Objective-C",
                    "Python",
                    "Typescript",
                    "Java"
                 ],
                 correctAnswerIndex: 0),
    ]
}
