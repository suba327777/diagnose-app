//
//  Util.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/05.
//

import Foundation

class Util{
    class func readCSV(key:String)->[[String]]{
        var csvArray=[String]()
        var csvList = [[String]]()
        // ファイルが存在するか
        guard let path=Bundle.main.path(forResource: key, ofType: "csv") else{
            print("csvファイルはないよ！")
            return [["error"]]
        }
        do{
            let csvString=try String(contentsOfFile:path,encoding: String.Encoding.utf8)
            csvArray=csvString.components(separatedBy: .newlines)
            csvArray.removeLast()
        }catch let error as NSError{
            print("エラー:\(error)")
            return [["error"]]
        }
        for csvData in csvArray {
            let csvDetail = csvData.components(separatedBy: ",")
            csvList.append(csvDetail)
        }
         return csvList
    }
}
