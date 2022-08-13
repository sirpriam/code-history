//
//  ContentView.swift
//  Code History 101
//
//  Created by Pangestu, Priambodo on 10/07/22.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20/225, green: 28/225, blue: 58/225);
    let accentColor = Color(red: 20/225, green: 105/225, blue: 240/225);
    let white = Color(red: 1, green: 1, blue: 1);
    
    let question: Question = Question(questionText: "What was the first computer bug ?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2);
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading).padding()
                Text(question.questionText).font(.largeTitle).bold().multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    Button(action: {print("Tapped on choice 1")},
                           label: {ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    
                    Button(action: {print("Tapped on choice 2")},
                           label: {ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    
                    Button(action: {print("Tapped on choice 3")},
                           label: {ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    
                    Button(action: {print("Tapped on choice 4")},
                           label: {ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })
                }
            }
        }.foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
