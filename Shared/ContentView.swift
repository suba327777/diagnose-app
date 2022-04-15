//
//  ContentView.swift
//  Shared
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body :some View{
        NavigationView{
            VStack{
                Text("診断アプリ")
                    .padding(.bottom, 11.0)
                NavigationLink(destination:SecondQuestionView()){
                    Text("スタート！！！！")
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
