//
//  FifthQuestionView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

struct FifthQuestionView: View {
    var body: some View {
            VStack{
                Text("トランプで物事を決めますか？")
                NavigationLink(destination:MiuraKen()){
                    Text("yes")
                }
                NavigationLink(destination:NakagawaKen()){
                    Text("No")
                }
            }
        .navigationBarBackButtonHidden(true)
    }
}

struct FifthQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        FifthQuestionView()
    }
}
