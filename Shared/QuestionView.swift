//
//  SecondView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//
import SwiftUI

struct QuestionView: View {
    @ObservedObject var ViewModel=QuestonViewModel()
    @State private var showResultView: Bool = false
    @State private var progress: Double = 0.0
    
    var body: some View {
                VStack{
                    Text("Q.\(ViewModel.cnt)")
                        .fontWeight(.black)
                        .font(.system(size:40))
                        .multilineTextAlignment(.center)
                    
                    Text(ViewModel.questionText)
                        .fontWeight(.black)
                        .font(.system(size:40))
                        .multilineTextAlignment(.center)
                        .padding(.top, 10.0)
                        
                    HStack{
                        Spacer()
                        Button{
                            ViewModel.calc(onYesClicked:true)
                            ViewModel.totalCount()
                            if(ViewModel.cnt==ViewModel.total){
                                self.showResultView=true
                            }
                        }label: {
                            Text("Yes")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(width: 150, height: 150, alignment: .center)
                                .font(.system(size:30))
                                
                        }
                        .background(.pink)
                        .border(Color.black, width: 2)
                        .cornerRadius(20)
                        
                        Spacer()
                        
                        Button{
                            ViewModel.calc(onYesClicked:false)
                            ViewModel.totalCount()
                            if(ViewModel.cnt==ViewModel.total){
                                self.showResultView=true
                            }
                        }label: {
                            Text("No")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .frame(width: 150, height: 150, alignment: .center)
                                .font(.system(size:30))
                                
                        }
                        .background(.cyan)
                        .border(Color.black, width: 2)
                        .cornerRadius(20)
                        Spacer()
                    }
                    .padding(.top,100)
                    
                    .fullScreenCover(isPresented: $showResultView){
                        ResultView(indexList:ViewModel.indexList,isAnswer:ViewModel.isAnswer)
                    }
                    VStack(alignment: .leading) {
                                Text("診断中...")
                                .foregroundColor(Color.blue)
                                .font(.system(size:20))
                                .padding(.bottom,15)
                        
                        ProgressView(value:Double(ViewModel.cnt), total: Double(ViewModel.total))
                                .accentColor(Color.blue)
                                .scaleEffect(x:1, y: 10, anchor: .center)
                            }
                    .padding([.top, .leading, .trailing], 100.0)
                }
            .navigationBarBackButtonHidden(true)
            
        }
}
    

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}


