//
//  GameViewModel.swift
//  Code History 101
//
//  Created by Pangestu, Priambodo on 25/09/22.
//

import SwiftUI

class GameViewModel: ObservableObject{
    @Published private var game = Game()
    
    var currentQuestions: Question{
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestions] {
            return true
        }else{
            return false
        }
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    var correctGuesses: Int{
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int{
        game.guessCount.incorrect
    }
    
    func makeGuess(atIndex index: Int){
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color{
        if let guessedIndex = game.guesses[currentQuestions] {
            if guessedIndex != optionIndex {
                return GameColor.main
            }else if guessedIndex == currentQuestions.correctAnswerIndex {
                return GameColor.correctGuess
            }else {
                return GameColor.incorrectGuess
            }
        }else{
            return GameColor.main
        }
    }
}
