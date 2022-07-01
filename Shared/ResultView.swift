//
//  ResultView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/06/24.
//

import SwiftUI

struct ResultView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var envData: EnvironmentData
    @State var showQuestionView=false
    
    let rankingList:[Int]
    let questionList:[[String]]
    
    var body: some View {
        VStack{
            Text("あなたにおすすめの研究室はこちらになります！！")
            
            
//                ForEach i in 0...rankingList.count{
//                    Text("\(questionList[0][rankingList[i]])")
//                }
            
            Button("homeに戻る"){
                print(rankingList)
                print(questionList)
                dismiss()
                envData.isNavigationActive.wrappedValue=false
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView()
//    }
//}
