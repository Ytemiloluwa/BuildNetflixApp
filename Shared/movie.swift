//
//  movie.swift
//  BuildNetflixApp
//
//  Created by Temiloluwa on 04/10/2020.
//

import Foundation
struct Movie: Identifiable{
    // to complete automatethe uuid
    // any time you initialize a struct you wont have set an id
    //var id: String = UUID().uuidString
    
    var id: String
    var name: String
    var thumbnailUrl: URL
    
    var catergories: [String]
    
    //movieDetailView
    
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    
    // personlisation
    
    var currentEpisode: currentEpisodeInfo?
    var defaultEpisodeInfo: currentEpisodeInfo
    
    var episode: [Episode]?
    
    var promotionHeadline: String?
    
    var numberOfSeasonsDisplay: String {
        
        if let num = numberOfSeasons {
            if num == 1 {
                
                return "1 Season"
            }
            else {
                
                return "\(num) seasons"
            }
            
        }
        return ""
    }
    
    var epiosdeDisplayName: String {
        
        if let current = currentEpisode {
            return "S3:E8"
        }
        else {
            
            
        }
        
        return ""
    }

}

struct currentEpisodeInfo: Hashable, Equatable {
    
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
    
}
