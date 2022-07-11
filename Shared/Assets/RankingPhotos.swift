//
//  RankingPhotos.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/11.
//

import Foundation

struct RankingPhotos:Identifiable{
    var id=UUID()
    var imageName:String
}

var rankingArray=[
    RankingPhotos(imageName: "1"),
    RankingPhotos(imageName: "2"),
    RankingPhotos(imageName: "3"),
    RankingPhotos(imageName: "4"),
]
