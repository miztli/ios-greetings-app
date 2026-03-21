//
//  ItemListView.swift
//  GreetingApp
//

import SwiftUI

struct ItemListView: View {
    let title: String = "Item List"
    let titleId: String = "item-list-title"
    let pokemonNames: [String] = [
        "Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon",
        "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie",
        "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill",
        "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate",
        "Spearow", "Fearow", "Ekans", "Arbok", "Pikachu",
        "Raichu", "Sandshrew", "Sandslash", "Nidoran♀", "Nidorina",
        "Nidoqueen", "Nidoran♂", "Nidorino", "Nidoking", "Clefairy",
        "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff",
        "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume",
        "Paras", "Parasect", "Venonat", "Venomoth", "Diglett",
        "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck",
        "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag",
        "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam",
        "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell",
        "Victreebel", "Tentacool", "Tentacruel", "Geodude", "Graveler",
        "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro",
        "Magnemite", "Magneton", "Farfetch'd", "Doduo", "Dodrio",
        "Seel", "Dewgong", "Grimer", "Muk", "Shellder",
        "Cloyster", "Gastly", "Haunter", "Gengar", "Onix",
        "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb"
    ]

    var body: some View {
        let startTime = Date()
        
        ScrollView {
            VStack {
                Text(title)
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .background(Color(.systemGray6))
                    .accessibilityIdentifier(titleId)
                ForEach(pokemonNames, id: \.self) { name in
                    // Uncomment for analysing performance
                    // Thread.sleep(forTimeInterval: 0.005)
                    return Text(name)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }
            }
            .onAppear {
                let endTime = Date()
                let timeInterval: TimeInterval = endTime.timeIntervalSince(startTime) * 1000
                print("Time to first render: \(timeInterval) ms")
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
    }
}

#Preview {
    NavigationStack {
        ItemListView()
    }
}
