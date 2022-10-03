//
//  ScoreViewModel.swift
//  Code History 101
//
//  Created by Pangestu, Priambodo on 30/09/22.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
