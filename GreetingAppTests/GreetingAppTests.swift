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
