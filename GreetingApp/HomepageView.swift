//
//  HomepageView.swift
//  GreetingApp
//

import SwiftUI

struct HomepageView: View {
    let greeting: String = "Homepage"
    var body: some View {
        ScrollView {
            VStack {
                Text(greeting)
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .background(Color(.systemGray6))
                    .accessibilityIdentifier("homepage-title")
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
}

#Preview {
    HomepageView()
}
