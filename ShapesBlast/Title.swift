//
//  TitleView.swift
//  ShapesBlast
//
//  Created by Ishaan Sharma on 7/29/2022.
//

import SwiftUI

struct TitleView: View {
    
    @ObservedObject var game: Game
    
    var body: some View {
        HStack(spacing: 8) {
            Text("Shapes Blast")
                .bold()
                .font(.largeTitle)
                .foregroundColor(Color(red: 120/255, green: 111/255, blue: 102/255))
            
            Spacer()
            Button {
                game.score = 0
                game.bestScore = 0
            } label: {
                Image(systemName: "gobackward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(red: 236/255, green: 140/255, blue: 85/255))
            }
            if game.isPlaying {
                Button {
                    game.timerStop()
                } label: {
                    Image(systemName: "pause.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(red: 236/255, green: 140/255, blue: 85/255))
                }
            }
        }
        Text("Made by Ishaan Sharma")
            .font(Font.custom("Times New Roman", size: 15))
            .italic()
            .bold()
            .foregroundStyle(.red)
            
    }
}
