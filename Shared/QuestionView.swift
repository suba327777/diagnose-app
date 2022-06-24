//
//  SecondView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//
import SwiftUI

class QuestonController:ObservableObject{
    @Published var questiontext:String=""
    @Published var numQuestion:Int=20
    @Published var csvArray=[String]()
    @Published var questionList = [[String]]()
    //乱数配列
    private var random = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] // 質問数
    var cnt:Int=1
    /*得点を格納する１次元配列の初期化 研究室数+1*/
    var answerScore = [Int](repeating: 0, count: 18)
    
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
        random[15] = Int(arc4random_uniform(75 - 71)+71)//71~75の範囲
        random[16] = Int(arc4random_uniform(80 - 76)+76)//76~80の範囲
        random[17] = Int(arc4random_uniform(85 - 81)+81)//81~85の範囲
        random[18] = Int(arc4random_uniform(90 - 86)+86)//86~90の範囲
        random[19] = Int(arc4random_uniform(95 - 91)+91)//91~95の範囲
        random[20] = Int(arc4random_uniform(100 - 96)+96)//96~100の範囲
        print("質問 = " ,random)
        
    }
    
    private func questionGeneration(){
        questiontext=questionList[random[cnt]][0]
    }
    
    public func scoreCalc(trigger:Bool){
        //研究室ごとにポイント加算
        if(trigger){
            for i in 1...17{
                answerScore[i]+=Int(questionList[random[cnt-0]][i])!
            }
        }
        cnt+=1;
        print(answerScore)
        if(cnt<=numQuestion){
            questionGeneration()
        }
    }
}
struct QuestionView: View {
    @ObservedObject var question=QuestonController()
    @State private var showResultView: Bool = false
    var body: some View {
                VStack{
                    Text(question.questiontext)
                    
                    HStack{
                        Button{
                            question.scoreCalc(trigger:true)
                            if(question.cnt==20){
                                self.showResultView = true
                            }
                            
                        }label: {
                            Text("Yes")
                        }
                        Button{
                            question.scoreCalc(trigger:false)
                            if(question.cnt==20){
                                self.showResultView = true
                            }
                        }label: {
                            Text("No")
                        }
                    }
                    .sheet(isPresented: $showResultView){
                        ResultView()
                    }
                }
            .navigationBarBackButtonHidden(true)
        }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}


