//
//  HomeVM.swift
//  BuildNetflixApp
//
//  Created by Temiloluwa on 04/10/2020.
//

import Foundation

class HomeVM: ObservableObject{
    
    // String == category
    
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        // computed property
        
        // accessing all the keys which means we are looping them over each key, a forLoop is going on in String($0), $0 is a temporary variable
        
        // for each key in the movies dictionary
        movies.keys.map({String($0)})
    }
    
    public func getMovies(forCat Cat: String) -> [Movie]{
        
        return movies[Cat] ?? []
        
    }
    init() {
        
        setUpMovies()
    }
    
    func setUpMovies() {
        movies["Trending now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch it Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
        
    }
    
}
