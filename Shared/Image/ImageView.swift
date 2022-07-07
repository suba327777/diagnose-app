//
//  ImageView.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/05.
//

import SwiftUI

struct ImageView: View {
    
    var image:ImageModel
    
    var body: some View {
        VStack{
//            順位を表示しその順位に応じた王冠を表示する

            Text(image.title)
//                .font(.custom("Times-Roman", size: 30))

            Image(image.imageName)
                .resizable()
                .frame(width: 400, height: 250,alignment:.center)
                .cornerRadius(10)
            
            Text(image.subTitle)
//                        .font(.custom("Times-Roman", size: 17))
            .padding()
//            .border(Color.black,width: 1)
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
        ImageView(image:imageArray[1])
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
