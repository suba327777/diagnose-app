//
//  RankingModel.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/08.
//

import Foundation

import Foundation

struct RankingModel:Identifiable{
    var id=UUID()
    var imageName:String
}

var rankingArray=[
    RankingModel(imageName: "1"),
    RankingModel(imageName: "2"),
    RankingModel(imageName: "3"),
    RankingModel(imageName: ""),
]
