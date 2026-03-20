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
        let expectedTitle = "Homepage"
        #expect(expectedTitle == "Homepage")
    }

}
