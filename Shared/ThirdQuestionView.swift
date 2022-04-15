//
//  thirdQuestionView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

struct ThirdQuestionView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("はっきりもの言ってくれる教授はありがたいですか？")
                NavigationLink(destination:NakagawaKen()){
                    Text("Yes")
                }
                NavigationLink(destination:FourthQuestionView()){
                    Text("No")
                }
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ThirdQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdQuestionView()
    }
}
