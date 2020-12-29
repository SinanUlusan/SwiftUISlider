//
//  ContentView.swift
//  SwiftUISlider
//
//  Created by Sinan Ulusan on 29.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value = 8.0
    
    var body: some View {
        VStack(spacing: 30) {
            
            Text("Slider")
                .font(.largeTitle)
            HStack {
                Image(systemName: "speaker.fill")
                    .foregroundColor(.gray)
                Slider(value: $value, in: 1...100, step: 1)
                    .padding(15)
                    .accentColor(.red)
                    .padding(.horizontal)
                Image(systemName: "speaker.3.fill")
                    .foregroundColor(.gray)
            }
        Text("Value is: \(value)")
            .foregroundColor(.purple)
            .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
