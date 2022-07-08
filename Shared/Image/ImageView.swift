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
                    .frame(width: 30, height: 25,alignment:.center)
                Text(image.title)
            }
            Image(image.imageName)
                .resizable()
                .frame(width: 400, height: 250,alignment:.center)
                .cornerRadius(10)
                .onTapGesture {
                    guard let laboratoryURL = URL(string: image.url)
                     else { fatalError("Expected a valid URL") }
                    UIApplication.shared.open(laboratoryURL)
                }
            Text(image.subTitle)
            .padding()
        }
    }
}


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image:imageArray[1],ranking: rankingArray[0])
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.portrait)
        
    }
}
