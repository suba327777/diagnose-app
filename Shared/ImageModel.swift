//
//  ImageModel.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/05.
//

import Foundation

struct ImageModel:Identifiable{
    var id=UUID()
    var imageName:String
    var title:String
}

var imageArray=[
    ImageModel(imageName: "", title: "none"),
    ImageModel(imageName: "工藤研究室", title: "工藤研究室"),
    ImageModel(imageName: "中川研究室", title: "中川研究室"),
    ImageModel(imageName: "野口研究室", title: "野口研究室"),
    ImageModel(imageName: "佐藤研究室", title: "佐藤研究室"),
    ImageModel(imageName: "田村研究室", title: "田村研究室"),
    ImageModel(imageName: "木戸研究室", title: "木戸研究室"),
    ImageModel(imageName: "鈴木研究室", title: "鈴木研究室"),
    ImageModel(imageName: "井上研究室", title: "井上研究室"),
    ImageModel(imageName: "河野研究室", title: "河野研究室"),
    ImageModel(imageName: "角田研究室", title: "角田研究室"),
    ImageModel(imageName: "松田研究室", title: "松田研究室"),
    ImageModel(imageName: "三浦研究室", title: "三浦研究室"),
    ImageModel(imageName: "縄田研究室", title: "縄田研究室"),
    ImageModel(imageName: "北研究室", title: "北研究室"),
    ImageModel(imageName: "八巻研究室", title: "八巻研究室"),
    ImageModel(imageName: "グエン研究室", title: "グエン研究室"),
    ImageModel(imageName: "袁研究室", title: "袁研究室")
]
