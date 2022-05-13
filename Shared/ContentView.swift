//
//  ContentView.swift
//  Shared
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

class EnvironmentData: ObservableObject {
    @Published var isNavigationActive: Binding<Bool> = Binding<Bool>.constant(false)
}


struct ContentView: View {

    @State var isActive: Bool = false
    @EnvironmentObject var envData: EnvironmentData

    var body :some View{
        NavigationView{
            VStack{
                Text("診断アプリ")
                    .padding(.bottom, 11.0)

            NavigationLink(destination:QuestionView(),isActive: $isActive){
                   EmptyView()
                }
                Button("スタート"){
                    isActive=true
                    envData.isNavigationActive=$isActive
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(EnvironmentData())
    }
    
}

