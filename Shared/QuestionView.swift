//
//  SecondView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
                VStack{
                        Text("好きな分野は宇宙ですか?")
                        NavigationLink(destination:NakagawaKen()){
                           Text("yes")
                        }
                        NavigationLink(destination:MiuraKen()){
                            Text("No")
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



