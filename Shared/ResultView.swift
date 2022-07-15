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
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var envData: EnvironmentData
    
    let indexList:[Int]
    let isAnswer:Bool
    
    var body: some View {
        ScrollView(showsIndicators:false ){
            VStack{
                if(isAnswer==true){
                    if(self.isCountDown){
                        ForEach (Array(indexList.enumerated()),id: \.offset){ offset,i in
                            ImageView(labo: laboArray[i],ranking: rankingArray[offset])
                        }
                    }else{
                        Text("あなたにおすすめの研究室は...")
                            .font(.system(size: 30, weight: .black, design: .default))
                            .offset(x:0,y:500)
                    }
                
                }else{
                    if(self.isCountDown){
                        HStack{
                            Spacer()
                            Image("Image-1")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                            Spacer()
                            Image("Image")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                            Spacer()
                        }
                        
                        ImageView(labo:laboArray[0],ranking: rankingArray[3])
                        
                        HStack{
                            Spacer()
                            Image("IMG_8951")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                            Spacer()
                            Image("IMG_8955")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width:200)
                            Spacer()
                        }
                    }else{
                        Text("全ての質問をNoと答えたあなたは...")
                            .font(.system(size: 30, weight: .black, design: .default))
                            .offset(x:0,y:500)
                    }
                }
            }
            
            if(self.isCountDown){
                Text("👆気になる研究室の写真を押してみてね👆")
                    .font(.system(size:30))
                    .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                    .padding()
                
                Button(action:{
                    dismiss()
                    envData.isNavigationActive.wrappedValue=false
                }){
                    Text("homeに戻る")
                        .font(.system(size:25))
                        .fontWeight(.bold)
                        .frame(width:580,height:50,alignment: .center)
                        .foregroundColor(Color.white)
                        .padding(.vertical,10)
                        .background(.blue)
                        .border(Color.black,width:2)
                        .cornerRadius(30,antialiased: true)
                        .font(.system(size:40))
                        .navigationBarBackButtonHidden(true)
                        .padding(.vertical,50)
                }

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

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(indexList: [2,4,5], isAnswer: true)
    }
}
