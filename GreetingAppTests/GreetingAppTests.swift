//
//  GreetingAppTests.swift
//  GreetingAppTests
//

import Testing
import SwiftUI
@testable import GreetingApp

struct HomepageViewTests {

    @Test func homepageViewCanBeInstantiated() {
        let view = HomepageView()
        #expect(view != nil)
    }

    @Test func homepageTitleIsCorrect() {
        let view = HomepageView()
        #expect(view.greeting == "Homepage")
    }

    @Test func homepageButtonLabelIsCorrect() {
        let view = HomepageView()
        #expect(view.buttonLabel == "To list view")
    }

    @Test func homepageButtonIdIsCorrect() {
        let view = HomepageView()
        #expect(view.buttonId == "list-view-button-id")
    }

}

struct ItemListViewTests {

    @Test func itemListViewCanBeInstantiated() {
        let view = ItemListView()
        #expect(view != nil)
    }

    @Test func itemListTitleIsCorrect() {
        let view = ItemListView()
        #expect(view.title == "Item List")
    }

    @Test func itemListHas100Pokemon() {
        let view = ItemListView()
        #expect(view.pokemonNames.count == 100)
    }

    @Test func itemListPokemonNamesAreUnique() {
        let view = ItemListView()
        #expect(Set(view.pokemonNames).count == 100)
    }

}
