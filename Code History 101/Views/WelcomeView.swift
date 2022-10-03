//
//  WelcomeView.swift
//  Code History 101
//
//  Created by Pangestu, Priambodo on 20/09/22.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView{
            ZStack{
                GameColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("CODE HISTORY 101")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                        Text("Select the correct answer for the following questions.")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {BottomTextView(str: "Okay, let's go!")
                        }
                    )
                    
                }.foregroundColor(.white)
                
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
