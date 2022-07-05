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
    
    let indexList:[Int]
    let questionList:[[String]]
    
    var body: some View {
        VStack{
            Text("あなたにおすすめの研究室はこちらになります！！")
            
            ForEach (indexList,id: \.self){ i in
                Text("\(questionList[0][i])")
                }
            
            Button("homeに戻る"){
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
