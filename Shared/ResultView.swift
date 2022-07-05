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
    let allAnswerFlg:Bool
    
    var body: some View {
        ScrollView{
            VStack{
                if(allAnswerFlg==true){
                    Text("あなたにおすすめの研究室はこちらになります！！")
                    ForEach (indexList,id: \.self){ i in
                        ImageView(image: imageArray[i])
                        }
                }else{
                    Text("全ての質問をNoと答えましたね！！\n脳の研究室です！！！")
                }
                Button("homeに戻る"){
                    dismiss()
                    envData.isNavigationActive.wrappedValue=false
                }
                .navigationBarBackButtonHidden(true)
            }
        }

    }
}

//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView()
//    }
//}
