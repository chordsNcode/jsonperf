//
//  GlossPerfTests.swift
//  JsonPerf
//
//  Created by Matt Dias on 10/9/16.
//

import XCTest
import Gloss

@testable import JsonPerf

class GlossPerfTests: XCTestCase {
    
    func testGlossPerformance() {
        self.measure {
            do {
                guard let json = try JSONSerialization.jsonObject(with: self.data!, options: .mutableLeaves) as? [String: Any],
                let items = json["items"] as? [[String: Any]] else {
                    XCTFail("bad JSON")
                    return
                }

                let result = items.map { Repo(json: $0) }
                XCTAssertTrue(result.count == 30)


            } catch {
                XCTFail("bad json")
            }
        }
    }
}
