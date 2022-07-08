//
//  ResultView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/06/24.
//

import SwiftUI

struct ResultView: View {
    
    @State var count = 2
    @State var isCountDown = false
//    @State var opacity=0.0
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var envData: EnvironmentData
    
    let indexList:[Int]
    let allAnswerFlg:Bool
    
    var body: some View {
        ScrollView(showsIndicators:false ){
            VStack{
                if(allAnswerFlg==true){
                    if(!self.isCountDown){
                        Text("あなたにおすすめの研究室は...")
                            .font(.system(size: 30, weight: .black, design: .default))
                            .offset(x:0,y:500)
                    }else{
                        ForEach (indexList,id: \.self){ i in
                            ImageView(image: imageArray[i])
                                .transition(.opacity)
                            }
                    }
                
                }else{
                    if(!self.isCountDown){
                        Text("全ての質問をNoと答えたあなたは...")
                            .font(.system(size: 30, weight: .black, design: .default))
                            .offset(x:0,y:500)
                        
                    }else{
                        ImageView(image:imageArray[0])
                            .padding(.top,300)
                    }
                }
            }
            if(self.isCountDown){
                Button("homeに戻る"){
                    dismiss()
                    envData.isNavigationActive.wrappedValue=false
                }
                .font(.subheadline)
                .frame(width:580,height:50,alignment: .center)
                .foregroundColor(Color.white)
                .padding(.bottom,10)
                .background(.blue)
                .border(Color.black,width:2)
                .cornerRadius(30,antialiased: true)
                .font(.system(size:40))
                .navigationBarBackButtonHidden(true)
                
            }
        }
        .onAppear(){
            //1.0sおきに実行される
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){timer in
                self.count-=1
                if(self.count==0){
                    timer.invalidate()
                    self.isCountDown=true
                }
            }
        }

    }
}

//struct ResultView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResultView()
//    }
//}
