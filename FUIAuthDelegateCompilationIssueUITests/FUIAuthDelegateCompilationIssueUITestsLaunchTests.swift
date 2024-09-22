//
//  FUIAuthDelegateCompilationIssueUITestsLaunchTests.swift
//  FUIAuthDelegateCompilationIssueUITests
//
//  Created by Shai Alkoby on 22/09/2024.
//

import XCTest

final class FUIAuthDelegateCompilationIssueUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
