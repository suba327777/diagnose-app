//
//  QuestionModel.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/11.
//

import Foundation

struct QuestionModel{
    
    var questionList = [[String]]()
    var questionText:String=""
    var cnt:Int=1
    var total:Int=20
    var answerScore:[Int]=[Int](repeating: 0, count: 18)
    var indexList:[Int]=[0,0,0]
    
    var isAnswer:Bool=false
    var onYesClicked:Bool=false
    var showResultView:Bool=false
    private var random = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0] // 質問数
    
    init(){
        questionList=Util.readCSV(key: "dataList")
        createRandom()
        generateQuestion()
    }
    
    private mutating func createRandom(){
        var a=1,b=5
        for i in 1..<random.count{
            random[i]=Int.random(in:a...b)
            a+=5
            b+=5
        }
        print("質問 = " ,random)
    }
    
    private mutating func generateQuestion(){
        questionText=questionList[random[cnt]][0]
    }
    
    mutating func calc(onYesClicked:Bool){
        if(onYesClicked){
            for i in 1...17{
                isAnswer=true
                answerScore[i]+=Int(questionList[random[cnt]][i])!
            }
        }
        cnt+=1
        print(answerScore)
        if(cnt<=total){
            generateQuestion()
        }
    }
    
    mutating func totalCount(){
        if(cnt==total){
            decideRank()
        }
    }
    
    mutating func decideRank(){
        if(isAnswer){
            for i in 1...indexList.count{
                if let firstIndex=answerScore.firstIndex(of: answerScore.max()!){
                    answerScore[firstIndex] = -1*answerScore[firstIndex]
                    indexList[i-1] = firstIndex
                    print("\(i)位 \(questionList[0][firstIndex]) \(answerScore)")
                    print(indexList)
                }
            }
        }
    }
}
