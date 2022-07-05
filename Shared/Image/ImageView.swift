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
            Image(image.imageName)
            Text(image.title)
            Text(image.info)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image:imageArray[1])
            .previewLayout(.sizeThatFits)
    }
}
