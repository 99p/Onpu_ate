//
//  ContentView.swift
//  Onpu_ate
//
//  Created by macboy on 2021/10/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        Image("gosenfu")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 150)
        Image("tama")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
