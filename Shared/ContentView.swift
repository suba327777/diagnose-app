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
        HStack {
            
            NavigationView{
                VStack{
                    Image("hacker-g2f505fda9_640")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 1100, height: 1300)
                        .offset(y:50)
                        .clipped()
                        .overlay(
                            VStack{
                            Text("研究室診断アプリ")
                    //.padding(.bottom, 210.0)
                                .font(.system(size:80))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                //.background(.white)
                                .offset(y: -300)
                            
                            Text("〜20問でわかるおすすめの研究室〜")
                                .font(.system(size:40))
                                .font(.largeTitle)
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                                .offset(y: -300)
                                
                                NavigationLink(destination:QuestionView(),isActive: $isActive){
                                       EmptyView()
                                    }
                                    
                                    Button(action:{
                                        isActive=true
                                        envData.isNavigationActive=$isActive
                                    }){
                                        Text("START")
                                            .font(.largeTitle)
                                            .frame(width:680,height:100,alignment: .center)
                                            .foregroundColor(Color.blue)
                                            .background(Color.white)
                                            .cornerRadius(50,antialiased: true)
                                            .padding(.bottom,10)
                                            
                                    }
                                    .offset(y: 200)
                            }
                        )
                    
//                NavigationLink(destination:QuestionView(),isActive: $isActive){
//                       EmptyView()
//                    }
//
//                    Button(action:{
//                        isActive=true
//                        envData.isNavigationActive=$isActive
//                    }){
//                        Text("START")
//                            .font(.largeTitle)
//                            .frame(width:680,height:100,alignment: .center)
//                            .foregroundColor(Color.red)
//                            .background(Color.green)
//                            .cornerRadius(15,antialiased: true)
//                            .padding(.bottom,10)
//                    }
                    
                }
                .navigationBarBackButtonHidden(true)
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(EnvironmentData())
    }
    
}

