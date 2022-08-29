//
//  Episode.swift
//  BuildNetflixApp (iOS)
//
//  Created by Temiloluwa on 14/11/2020.
//

import Foundation
import UIKit


struct Episode: Identifiable {

    // using uuidString because we will be using a ForEach loop
    var id = UUID().uuidString
    
    var name : String
    var season: Int
    // this is probably what you are storing in the database when you are using codable to get episode
    var thumnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumnailImageURLString)!
    }

}


