//
//  NakagawaKen.swift
//  diagnose-app
//
//  Created by miuraken on R 4/04/15.
//

import SwiftUI

struct NakagawaKen: View {
    @EnvironmentObject var envData: EnvironmentData
    
    var body: some View {
        VStack{
            Text("中川研をおすすめします！！")
            Button("homeに戻る"){
                envData.isNavigationActive.wrappedValue=false
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct NakagawaKen_Previews: PreviewProvider {
    static var previews: some View {
        NakagawaKen()
    }
}
