//
//  ContentView.swift
//  Onpu_ate
//
//  Created by macboy on 2021/10/07.
//

import SwiftUI

let sounds = [ "e4", "f4", "g4", "a4", "b4", "c5", "d5", "e5", "f5"]

struct ContentView: View {
    @State var sound = sounds.randomElement()!
    @State var correct = false
    
    func restart(){
        self.sound = sounds.randomElement()!
        self.correct = false
    }
    
    var body: some View {
        ZStack {
            Color.white
            if correct == true {
                Text("wow!")
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
                    .padding(.top)
            }
        VStack{
            Image(sound)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                .padding(.bottom)
            HStack(spacing: 30){
                Button(action: {
                    if sound.starts(with: "c") { correct = true }
                }) {
                    Text("ド")
                }
                Button(action: {
                    if sound.starts(with: "d") { correct = true }
                }) {
                    Text("レ")
                }
                Button(action: {
                    if sound.starts(with: "e") { correct = true }
                }) {
                    Text("ミ")
                }
                Button(action: {
                    if sound.starts(with: "f") { correct = true }
                }) {
                    Text("ファ")
                }
                Button(action: {
                    if sound.starts(with: "g") { correct = true }
                }) {
                    Text("ソ")
                }
                Button(action: {
                    if sound.starts(with: "a") { correct = true }
                }) {
                    Text("ラ")
                }
                Button(action: {
                    if sound.starts(with: "b") { correct = true }
                }) {
                    Text("シ")
                }
            }.frame(height: 160)
            Button(action: restart) {
                Text("Go!!")
                    .font(.largeTitle)
            }
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 mini")
    }
}
