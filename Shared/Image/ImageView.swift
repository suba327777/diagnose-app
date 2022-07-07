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
            HStack{
                Image(image.imageName)
                    .resizable()
                    .frame(width: 370, height: 200,alignment:.center)
                    .cornerRadius(10)
                VStack{
                    Text(image.subTitle)
//                        .font(.custom("Times-Roman", size: 17))
                        .padding()
                    Text(image.info)
//                        .font(.custom("Times-Roman", size: 18))
                        .padding(.horizontal)
                        .padding(.top)
                }
               
                    
            }
            .padding()
//            .border(Color.black,width: 1)
        }

    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image:imageArray[1])
            .previewLayout(.sizeThatFits)
    }
}
