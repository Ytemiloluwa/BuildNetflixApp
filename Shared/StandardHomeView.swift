//
//  StandardHomeView.swift
//  BuildNetflixApp
//
//  Created by Temiloluwa on 04/10/2020.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeView: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailUrl)
            .resizable()
            .scaledToFill()
            
    }
}

struct StandardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeView(movie: exampleMovies1)
    }
}
