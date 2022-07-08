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
    @State private var progress: Double = 0.0
    
    var body: some View {
                VStack{
                    Text("Q.\(question.cnt)")
                        .fontWeight(.black)
                        .font(.system(size:40))
                        .multilineTextAlignment(.center)
                    
                    Text(question.questiontext)
                        
                        .fontWeight(.black)
                        .font(.system(size:40))
                        .multilineTextAlignment(.center)
                        
                    HStack{
                        Spacer()
                        Button{
                            question.scoreCalc(trigger:true)
                            if(question.cnt==question.numQuestion){
                                question.decideRank()
                                self.showResultView = true
                            }
                            
                        }label: {
                            Text("Yes")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(width: 150, height: 150, alignment: .center)
                                .font(.system(size:30))
                                
                        }
                        //.padding(.leading,30)
                        //.padding(.trailing,30)
                        //.padding(35)
                        .background(.pink)
                        .border(Color.black, width: 2)
                        .cornerRadius(20)
                        
                        Spacer()
                        
                        Button{
                            question.scoreCalc(trigger:false)
                            if(question.cnt==question.numQuestion){
                                question.decideRank()
                                self.showResultView = true
                            }
                        }label: {
                            Text("No")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(width: 150, height: 150, alignment: .center)
                                .font(.system(size:30))
                                
                        }
                        //.padding(35)
                        .background(.cyan)
                        .border(Color.black, width: 2)
                        .cornerRadius(20)
                        Spacer()
                    }
                    .padding(.top,100)
                    
                    .fullScreenCover(isPresented: $showResultView){
                        ResultView(indexList:question.indexList,allAnswerFlg:question.allAnswerFlg)
                    }
                    ProgressView("診断中...",value:Double(question.cnt),total: Double(question.numQuestion))
                        .padding(.top,100)
                        .padding(.horizontal,100)
                }
            .navigationBarBackButtonHidden(true)
        }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}


