//
//  JsonPerfTests.swift
//  JsonPerfTests
//
//  Created by Matt Dias on 9/20/16.
//

import XCTest
import Freddy

@testable import JsonPerf

class JsonPerfTests: XCTestCase {

    func testFreddyPerformance() {
        self.measure {
			do {

				let json = try JSON(data: self.data!)
				let result = try json.getArray(at: "items").map(Repo.init)
                XCTAssertTrue(result.count == 30)
			} catch {
				XCTFail("oops!")
			}
        }
    }
}
