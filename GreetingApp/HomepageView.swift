//
//  HomepageView.swift
//  GreetingApp
//

import SwiftUI

struct HomepageView: View {
    let greeting: String = "Homepage"
    let buttonLabel: String = "To list view"
    let homepageLabel: String = "homepage-title"
    let buttonId: String = "list-view-button-id"
    var body: some View {
        ScrollView {
            VStack {
                Text(greeting)
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .background(Color(.systemGray6))
                    .accessibilityIdentifier(homepageLabel)
                Button(buttonLabel) {}
                    .frame(maxWidth: .infinity)
                    .tint(.gray)
                    .buttonStyle(.borderedProminent)
                    .accessibilityIdentifier(buttonId)
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
