//
//  SecondView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
                VStack{
                        Text("好きな分野は宇宙ですか?")
                        NavigationLink(destination:NakagawaKen()){
                           Text("yes")
                        }
                        NavigationLink(destination:MiuraKen()){
                            Text("No")
                        }
                    }
            .navigationBarBackButtonHidden(true)
        }
}


func readCSV(){
    var csvArray=[String]()
    var questionList = [[String]]()
    // ファイルが存在するか
    guard let path=Bundle.main.path(forResource: "dataList", ofType: "csv") else{
        print("csvファイルはないよ！")
        return
    }
    
    do{
        let csvString=try String(contentsOfFile:path,encoding: String.Encoding.utf8)
        csvArray=csvString.components(separatedBy: .newlines)
        csvArray.removeLast()
    }catch let error as NSError{
        print("エラー:\(error)")
        return
    }
    
    for questionData in csvArray {
        let questionDetail = questionData.components(separatedBy: ",")
        questionList.append(questionDetail)
    }
    print(questionList)
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}



