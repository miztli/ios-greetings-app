//
//  ContentView.swift
//  GreetingApp
//
//  Created by Miztli Eduardo Melgoza Hernandez on 14/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            let greetings = "Hello, Bella!";
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(greetings)
                .onAppear {
                    print("This is a debug log")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
