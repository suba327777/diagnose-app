//
//  QuestionViewModel.swift
//  diagnose-app (iOS)
//
//  Created by miuraken on R 4/07/11.
//

import Foundation

class QuestonViewModel:ObservableObject{
    @Published var Model=QuestionModel()
    
    var cnt:Int{
        return Model.cnt
    }
    var questionText:String{
        return Model.questionText
    }
    var total:Int{
        return Model.total
    }
    var indexList:[Int]{
        return Model.indexList
    }
    var isAnswer:Bool{
        return Model.isAnswer
    }
    func calc(onYesClicked:Bool){
        Model.calc(onYesClicked: onYesClicked)
    }
    func totalCount(){
        Model.totalCount()
    }
}
