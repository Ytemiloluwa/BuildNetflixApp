//
//  MovieDetail.swift
//  BuildNetflixApp (iOS)
//
//  Created by Temiloluwa on 14/11/2020.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        
        ZStack {
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                        // close this View
                    }, label: {
                        
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                        
                    })
                    
                    // it won't make it have blue tint
                    .buttonStyle(PlainButtonStyle())
                }.padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        StandardHomeView(movie: movie)
                            // no matter how big the screen is it will render to the size
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubHeadline(movie: movie)
                        
                        if movie.promotionHeadline != nil {
                            
                            Text(movie.promotionHeadline!)
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(play: "Play", playicon: "play.fill", backgroundColor: .red) {
                            //
                        }
                        
                    }
                    .padding(.horizontal, 10)
                    
                }
                
                Spacer()
                
            }
            .foregroundColor(.white)
            
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovies6)
    }
}

struct MovieInfoSubHeadline: View {
    var movie: Movie
    var body: some View {
        
        HStack(spacing: 20){
            
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            // converting an Int to a String
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
            
            HighDefinition()
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    
    var rating : String
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct HighDefinition: View {
    
    var HD: String = "HD"
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .stroke(Color.gray, lineWidth: 1)
                .foregroundColor(Color.black.opacity(0.1))
            
            Text(HD)
                .foregroundColor(.white)
                .font(Font.system(size: 13))
        
        }
        .frame(width: 50, height: 22)
        
    }
    
}
