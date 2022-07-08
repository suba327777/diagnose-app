//
//  ImageView.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/05.
//

import SwiftUI

struct ImageView: View {
    
    var image:ImageModel
    var ranking:RankingModel
    var body: some View {
        VStack{
            HStack{
                Image(ranking.imageName)
                    .resizable()
                    .frame(width: 25, height: 25,alignment:.center)
                    .padding(.leading,10)
                Text(image.title)
            }
            Image(image.imageName)
                .resizable()
                .frame(width: 400, height: 250,alignment:.center)
                .cornerRadius(10)
            
            Text(image.subTitle)
            .padding()
        }
        .onTapGesture {
            guard let laboratoryURL = URL(string: image.url)
             else { fatalError("Expected a valid URL") }
            UIApplication.shared.open(laboratoryURL)
        }
    }
}


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image:imageArray[1],ranking: rankingArray[0])
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.landscapeLeft)
        
    }
}
