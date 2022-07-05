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
                                
                        }
                        //.padding(.leading,30)
                        //.padding(.trailing,30)
                        .padding(35)
                        .background(.pink)
                        .border(Color.green, width: 2)
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
                        }
                        .padding(35)
                        .background(.cyan)
                        .border(Color.green, width: 2)
                        .cornerRadius(20)
                        Spacer()
                    }
                    .padding(.top,100)
                    
                    .fullScreenCover(isPresented: $showResultView){
                        ResultView(indexList:question.indexList,questionList:question.questionList)
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


