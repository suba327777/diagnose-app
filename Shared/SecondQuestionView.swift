//
//  SecondView.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

struct SecondQuestionView: View {
    var body: some View {
        
                VStack{
                        Text("好きな分野は宇宙ですか?")
                        NavigationLink(destination:NakagawaKen()){
                            Text("Yes")
                        }
                    
                        NavigationLink(destination:ThirdQuestionView()){
                            Text("No")
                        }
                    }
        
            .navigationBarBackButtonHidden(true)
        }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondQuestionView()
    }
}

