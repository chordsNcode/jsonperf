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

	var data: Data?

    override func setUp() {
        super.setUp()
		
		let path = Bundle.main.path(forResource: "response", ofType: "json")
		data = NSData(contentsOfFile: path!) as? Data
    }

    override func tearDown() {
        self.data = nil

        super.tearDown()
    }

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

	func testNormalPerformance() {
		self.measure {
			do {
				guard let json = try JSONSerialization.jsonObject(with: self.data!) as? MyJSON,
					let items = json["items"] as? [MyJSON] else {
					XCTFail("bad JSON")
					return
				}

				_ = try items.map{
					try Repo(json: $0)
				}
			} catch {
				XCTFail("bad json")
			}
		}
	}
}
