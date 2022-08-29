//
//  globalHelpers.swift
//  BuildNetflixApp
//
//  Created by Temiloluwa on 04/10/2020.
//

import Foundation
import SwiftUI

let exampleMovies1 = Movie(id: UUID().uuidString, name: "DARK", thumbnailUrl: URL(string: "https://picsum.photos/200/300")!, catergories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeasons: 1, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovies2 = Movie(id: UUID().uuidString, name: "Travellers", thumbnailUrl: URL(string: "https://picsum.photos/200/300")!, catergories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],year: 2020, rating: "TV-MA",numberOfSeasons: 2, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovies3 = Movie(id: UUID().uuidString, name: "Community", thumbnailUrl: URL(string: "https://picsum.photos/200/301")!, catergories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],year: 2020, rating: "TV-MA",numberOfSeasons: 3, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovies4 = Movie(id: UUID().uuidString, name: "Alone", thumbnailUrl: URL(string: "https://picsum.photos/200/302")!, catergories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"], year: 2020, rating: "TV-MA",numberOfSeasons: 4, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovies5 = Movie(id: UUID().uuidString, name: "Hanninal", thumbnailUrl: URL(string: "https://picsum.photos/200/303")!, catergories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"], year: 2020, rating: "TV-MA",numberOfSeasons: 5, defaultEpisodeInfo: exampleEpisodeInfo1)
let exampleMovies6 = Movie(id: UUID().uuidString, name: "Afterlife", thumbnailUrl: URL(string: "https://picsum.photos/200/304")!, catergories: ["Dystopian", "Exciting", "Suspenful", "Sci-Fi TV"],year: 2020, rating: "TV-MA",numberOfSeasons: 6, defaultEpisodeInfo: exampleEpisodeInfo1, promotionHeadline: "Watch Season 6 now")

let exampleEpisodeInfo1 = currentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Six months after the disappearnce, the police form a task force, in 2052, jonas learned that most of the widens perished during the apocalptetic event", season: 1, episode: 2)

let exampleMovies : [Movie] = [exampleMovies1, exampleMovies2,exampleMovies3,exampleMovies4,exampleMovies5,exampleMovies6,]


extension LinearGradient {

    static let blackGradientOpacity = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
