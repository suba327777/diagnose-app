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
    var subTitle:String
    var url:String
}

var imageArray=[
    ImageModel(imageName: "三浦大先生", title: "三浦研一択です！！！",subTitle:"",url: "https://researchmap.jp/nmiura"),
    ImageModel(imageName: "工藤研究室", title: "工藤研究室",subTitle:"〜超高速次世代移動無線通信ネットワーク〜",url: "https://www.ice.tohtech.ac.jp/labs/kudoh/"),
    ImageModel(imageName: "中川研究室", title: "中川研究室",subTitle:"〜人工衛星や惑星探査機で宇宙科学に挑む〜",url: "https://www.ice.tohtech.ac.jp/labs/nakagawa/"),
    ImageModel(imageName: "野口研究室", title: "野口研究室",subTitle:"〜新しい光通信システムの技術を開発する〜",url: "https://www.ice.tohtech.ac.jp/labs/noguchi/"),
    ImageModel(imageName: "佐藤研究室", title: "佐藤研究室",subTitle:"〜地球環境を見守るレーザー光を開発",url: "https://www.ice.tohtech.ac.jp/labs/sato/"),
    ImageModel(imageName: "田村研究室", title: "田村研究室",subTitle:"〜情報を動きに変えるセンサやモータの開発〜",url: "https://www.ice.tohtech.ac.jp/labs/tamura/"),
    ImageModel(imageName: "木戸研究室", title: "木戸研究室",subTitle:"〜記憶に残る声から発話者の情報を〜",url: "https://www.ice.tohtech.ac.jp/labs/kido/"),
    ImageModel(imageName: "鈴木研究室", title: "鈴木研究室",subTitle:"〜ソフト・ハードからマイクロプロセッサへ〜",url: "https://www.ice.tohtech.ac.jp/labs/suzuki/"),
    ImageModel(imageName: "井上研究室", title: "井上研究室",subTitle:"〜人の認知を理解し、知的システム構築へ〜",url: "https://www.ice.tohtech.ac.jp/labs/inoue/"),
    ImageModel(imageName: "河野研究室", title: "河野研究室",subTitle:"〜ノア衛星の画像を解析し環境評価法の確立を〜",url: "https://www.ice.tohtech.ac.jp/labs/kawano/"),
    ImageModel(imageName: "角田研究室", title: "角田研究室",subTitle:"〜誰もが安心して使えるネットワークを〜",url: "https://www.ice.tohtech.ac.jp/labs/tsunoda/"),
    ImageModel(imageName: "松田研究室", title: "松田研究室",subTitle:"〜データベースと電子機器をネットワークで結ぶ〜",url: "https://www.ice.tohtech.ac.jp/labs/matsuda/"),
    ImageModel(imageName: "三浦研究室", title: "三浦研究室",subTitle:"〜人間の認知活動を応用したシステムの開発〜",url: "https://www.ice.tohtech.ac.jp/labs/miura/"),
    ImageModel(imageName: "縄田研究室", title: "縄田研究室",subTitle:"",url: "https://www.ice.tohtech.ac.jp/labs/nawata/"),
    ImageModel(imageName: "北研究室", title: "北研究室",subTitle:"",url: "https://www.ice.tohtech.ac.jp/labs/kita/"),
    ImageModel(imageName: "八巻研究室", title: "八巻研究室",subTitle:"",url: "https://www.ice.tohtech.ac.jp/labs/yamaki/"),
    ImageModel(imageName: "グエン研究室", title: "グエン研究室",subTitle:"",url: "https://www.ice.tohtech.ac.jp/labs/nguyen/"),
    ImageModel(imageName: "袁研究室", title: "袁研究室",subTitle:"",url: "https://www.ice.tohtech.ac.jp/labs/yuan/")
]

