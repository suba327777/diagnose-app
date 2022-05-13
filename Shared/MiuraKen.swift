//
//  MiuraKen.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

struct MiuraKen: View {
    @EnvironmentObject var envData: EnvironmentData
    
    var body: some View {
        VStack{
            Text("三浦研をおすすめします！")
            Button("homeに戻る"){
                envData.isNavigationActive.wrappedValue=false
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct MiuraKen_Previews: PreviewProvider {
    static var previews: some View {
        MiuraKen()
    }
}
