//
//  PlayButton.swift
//  BuildNetflixApp (iOS)
//
//  Created by Temiloluwa on 13/11/2020.
//

import SwiftUI

struct PlayButton: View {
    
    var play: String
    var playicon: String
    
    var backgroundColor: Color = Color.white
    
    var action: () -> Void
    var body: some View {
        Button(action: {action()}) {
        HStack {
            Spacer()
            Image(systemName: playicon)
                .font(.headline)
            
            
            Text(play)
                .bold()
                .font(.system(size: 16))
            
            Spacer()
          }
        }
        .padding(.vertical, 6)
        .foregroundColor(backgroundColor == .white ? .black : .white)
        .background(backgroundColor)
        .cornerRadius(3.0)
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            PlayButton(play: "Play", playicon: "play.fill", action: {
                
                print("play")
            })
        }
    }
}
