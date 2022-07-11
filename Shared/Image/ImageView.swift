//
//  ImageView.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/05.
//

import SwiftUI

struct ImageView: View {
    
    var labo:LaboPhotos
    var ranking:RankingPhotos
    
    var body: some View {
        VStack{
            Image(labo.icon)
                .resizable()
                .frame(width: 25, height: 50)
                .position(x: 185, y: 110)
            
            HStack{
                Image(ranking.imageName)
                    .resizable()
                    .frame(width: 30, height: 25,alignment:.center)
                    
                Text(labo.title)
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    
            }

            Image(labo.imageName)
                .resizable()
                .frame(width: 400, height: 250,alignment:.center)
                .cornerRadius(10)
                .onTapGesture {
                    guard let laboratoryURL = URL(string: labo.url)
                     else { fatalError("Expected a valid URL") }
                    UIApplication.shared.open(laboratoryURL)
                }
    
            Text(labo.subTitle)
                .font(.body)
                .padding()
        }
        .padding()
    }
}


struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(labo:laboArray[2],ranking: rankingArray[0])
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.portrait)
        
    }
}
