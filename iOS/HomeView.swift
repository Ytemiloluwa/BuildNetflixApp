//
//  HomeView.swift
//  BuildNetflixApp
//
//  Created by Temiloluwa on 03/10/2020.
//

import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false){
                // main vstack
                LazyVStack {
                    
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovies1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    
                    
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false){
                                LazyHStack {
                                    
                                    ForEach(vm.getMovies(forCat: category)) { movie in
                                        
                                        StandardHomeView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20 )
                                    }
                                }
                            }
                        }
                    }
                    
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    
    var body: some View {
        
        HStack{
            
            Button(action: {} ) {
                
                Image("Netflix")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                
            }.buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {} ) {
                
                
                Text("TVShows")
                
            }
            .buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            Button(action: {} ) {
                
                Text("Movies")
                
            } .buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            Button(action: {} ) {
                
                Text("MyList")
                
            } .buttonStyle(PlainButtonStyle())
            
            
        }
        .foregroundColor(Color.red)
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
    
}
