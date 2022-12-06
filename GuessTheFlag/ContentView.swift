//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Юрий Губин on 06.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = [
    "UK",
    "USA",
    "Bangladesh",
    "Germany",
    "Argentina",
    "Brazil",
    "Canada",
    "Greece",
    "Russia",
    "Sweden"
    ].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("Choose flag: ")
                        .foregroundColor(.white)
                        .font(.headline)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                }
                
                ForEach(0..<3) { number in
                    Button(action: {
                        
                    }) {
                        Image(self.countries[number])
                            .renderingMode(.original)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
