//
//  FourthQuestionView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

struct FourthQuestionView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("白衣は好きですか？")
                NavigationLink(destination:NakagawaKen()){
                    Text("yes")
                }
                NavigationLink(destination:FifthQuestionView()){
                    Text("No")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct FourthQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        FourthQuestionView()
    }
}
