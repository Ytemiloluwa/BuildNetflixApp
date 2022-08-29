//
//  TopMoviePreview.swift
//  BuildNetflixApp (iOS)
//
//  Created by Temiloluwa on 12/11/2020.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        
        let catCount = movie.catergories.count
        
        if  let index = movie.catergories.firstIndex(of: cat) {
            
            if index + 1 != catCount {
                
                return false
            }
            
            
        }
        return true
        
    }
    var body: some View {
        
        ZStack {
            KFImage(movie.thumbnailUrl)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                
                Spacer()
                
                
                HStack {
                    
                    ForEach(movie.catergories, id: \.self) { category in
                        HStack {
                            
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                                    
                            }
                         
                        }
                    }
                }
                
                HStack  {
                    
                    Spacer()
                    
                    smallVerticalButton(text: "MyList", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //
                    }
                   
                    Spacer()
                    
                    PlayButton(play: "Play", playicon: "play.fill") {
                        //
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    smallVerticalButton(text: "Myinfo", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    
                    Spacer()
                }

            }
            .background(LinearGradient.blackGradientOpacity.padding(.top, 250))
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovies1)
    }
}
