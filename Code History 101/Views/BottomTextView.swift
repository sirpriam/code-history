//
//  BottomTextView.swift
//  Code History 101
//
//  Created by Pangestu, Priambodo on 22/09/22.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack{
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accent)
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Okay, let's go")
    }
}
