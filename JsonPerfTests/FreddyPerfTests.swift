//
//  JsonPerfTests.swift
//  JsonPerfTests
//
//  Created by Matt Dias on 9/20/16.
//  Copyright © 2016 Zipcar. All rights reserved.
//

import XCTest
import Freddy

@testable import JsonPerf

class JsonPerfTests: XCTestCase {

    func testFreddyPerformance() {
        self.measure {
			do {

				let json = try JSON(data: self.data!)
				_ = try json.getArray(at: "items").map(Repo.init)

			} catch {
				XCTFail("oops!")
			}
        }
    }
}
