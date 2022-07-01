//
//  SecondView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//
import SwiftUI

struct QuestionView: View {
    @ObservedObject var question=QuestonController()
    @State private var showResultView: Bool = false
    var body: some View {
                VStack{
                    Text(question.questiontext)
                        
                        .fontWeight(.black)
                        padding(150)
                    
                        
                    
                    HStack{
                        Button{
                            question.scoreCalc(trigger:true)
                            if(question.cnt==question.numQuestion){
                                self.showResultView = true
                            }
                            
                        }label: {
                            Text("Yes")
                        }
                        Button{
                            question.scoreCalc(trigger:false)
                            if(question.cnt==question.numQuestion){
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


