# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Test Commands

```bash
# Build
xcodebuild -project GreetingApp.xcodeproj -scheme GreetingApp -configuration Debug

# Run all tests
xcodebuild test -project GreetingApp.xcodeproj -scheme GreetingApp -destination 'platform=iOS Simulator,name=iPhone 16'

# Run unit tests only
xcodebuild test -project GreetingApp.xcodeproj -scheme GreetingApp -destination 'platform=iOS Simulator,name=iPhone 16' -only-testing:GreetingAppTests

# Run UI tests only
xcodebuild test -project GreetingApp.xcodeproj -scheme GreetingApp -destination 'platform=iOS Simulator,name=iPhone 16' -only-testing:GreetingAppUITests
```

## Architecture

**Stack:** SwiftUI on iOS 18.5, Swift 5.0. Unit tests use Swift Testing framework; UI tests use XCTest.

**Entry point:** `GreetingApp/GreetingAppApp.swift` — `@main` struct that loads `ContentView` as the root.

**Current state:** Minimal skeleton. `ContentView.swift` shows a globe icon and hardcoded greeting. No navigation is implemented yet.

**Planned features** (see `requirements/`):
- `REQ-001`: Homepage screen with centered title, white full-screen background, scrollable
- `REQ-002`: Grey button labeled "To list view" (`list-view-button-id`) below the homepage title
- `REQ-003`: ItemList screen showing 100 Pokémon names, with back navigation; reached via REQ-002 button

Navigation will be added between Homepage → ItemList. Each screen should include a SwiftUI Preview.
