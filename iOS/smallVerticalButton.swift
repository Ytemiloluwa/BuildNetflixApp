//
//  smallVerticalButton.swift
//  BuildNetflixApp (iOS)
//
//  Created by Temiloluwa on 13/11/2020.
//

import SwiftUI

struct smallVerticalButton: View {
    
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    
    var isOn: Bool
    
    var imageName: String {
        
        // which is a computed property
        
        if isOn {
            
            return isOnImage
        }
        else {
            
            return isOffImage
        }
    }
    
    var action: () -> Void
    var body: some View {
        
        Button(action: {action()}) {
            
            VStack {
                
                Image(systemName: imageName)
                    .foregroundColor(.white)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
                
            }
            
        }
    }
}

struct smallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            
            Color.black.edgesIgnoringSafeArea(.all)
            smallVerticalButton(text: "MyList", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
            
            print("tapped")
          }
        }
    }
}
