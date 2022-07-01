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
                
                Text("研究室診断アプリ")
                    .padding(.bottom, 210.0)
                    .font(.largeTitle)
                
            NavigationLink(destination:QuestionView(),isActive: $isActive){
                   EmptyView()
                }
                Button(action:{
                    isActive=true
                    envData.isNavigationActive=$isActive
                }){
                    Text("START")
                        .font(.largeTitle)
                        .frame(width:280,height:60,alignment: .center)
                        .foregroundColor(Color.red)
                        .background(Color.green)
                        .cornerRadius(15,antialiased: true)
                        .padding(.bottom,10)
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

