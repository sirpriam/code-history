//
//  ChoiceTextView.swift
//  Code History 101
//
//  Created by Pangestu, Priambodo on 11/08/22.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 20/225, green: 105/225, blue: 240/225);
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choose a text")
    }
}
