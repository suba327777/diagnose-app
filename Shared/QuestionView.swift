//
//  SecondView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//
import SwiftUI

class QuestonController:ObservableObject{
    @Published var csvArray=[String]()
    @Published var questionList = [[String]]()
    @Published var questiontext:String=""
    @Published var numQuestion:Int=20
    //乱数配列
    var random = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] //研究室+1
    var cnt:Int=1
    /*得点を格納する１次元配列の初期化 研究室数+1*/
    var answerScore = [Int](repeating: 0, count: 20)
    
    
    init(){
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
        
//        csv 格納
        self.questionList=questionList
        
        createRandom()
        questionGeneration()
    }
    
    private func createRandom(){
        random[1] = Int(arc4random_uniform(5)+1)//1~5の範囲
        random[2] = Int(arc4random_uniform(10 - 6)+6)//6~10の範囲
        random[3] = Int(arc4random_uniform(15 - 11)+11)//11~15の範囲
        random[4] = Int(arc4random_uniform(20 - 16)+16)//16~20の範囲
        random[5] = Int(arc4random_uniform(25 - 21)+21)//21~25の範囲
        random[6] = Int(arc4random_uniform(30 - 26)+26)//26~30の範囲
        random[7] = Int(arc4random_uniform(35 - 31)+31)//31~35の範囲
        random[8] = Int(arc4random_uniform(40 - 36)+36)//36~40の範囲
        random[9] = Int(arc4random_uniform(45 - 41)+41)//41~45の範囲
        random[10] = Int(arc4random_uniform(50 - 46)+46)//46~50の範囲
        random[11] = Int(arc4random_uniform(55 - 51)+51)//51~55の範囲
        random[12] = Int(arc4random_uniform(60 - 56)+56)//56~60の範囲
        random[13] = Int(arc4random_uniform(65 - 61)+61)//61~65の範囲
        random[14] = Int(arc4random_uniform(70 - 66)+66)//66~70の範囲
        print("質問 = " ,random)
        
    }
    
    func questionGeneration(){
        questiontext=questionList[random[cnt]][0]
        print(questiontext)
    }
    
    func scoreCalc(){
        if(cnt<=numQuestion){
            //研究室ごとにポイント加算
            for i in 1...14{
                answerScore[i]+=Int(questionList[random[cnt-1]][i])!
            }
            cnt+=1;
            questionGeneration()
        }
    }
}
struct QuestionView: View {
    @ObservedObject var question=QuestonController()

    var body: some View {
                VStack{
                    Text(question.questiontext)
                    
                    HStack{
                        Button{
                            if(question.cnt==question.numQuestion){
                                     print("a")
                            }else{
                                question.scoreCalc()
                            }
                        }label: {
                            Text("Yes")
                        }
                        Button{
                            if(question.cnt==question.numQuestion){
                                     print("a")
                            }else{
                                question.scoreCalc()
                            }
                        }label: {
                            Text("No")
                        }
                    }
//                        NavigationLink(destination:NakagawaKen()){
//                           Text("yes")
//                            //1
////                            cnt=cnt+1
//
//                        }
//                        NavigationLink(destination:MiuraKen()){
//                            Text("No")
////                            0
////                            cnt++
//                        }
                    }
            .navigationBarBackButtonHidden(true)
        }
}


struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}


