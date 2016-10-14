//
//  JSONCodablePerfTests.swift
//  JsonPerf
//
//  Created by Matt Dias on 10/12/16.
//

import XCTest
import JSONCodable

@testable import JsonPerf

class JSONCodablePerfTests: XCTestCase {

    func testJSONCodablePerf() {
        self.measure {
            do {
                guard let json = try JSONSerialization.jsonObject(with: self.data!) as? JSONObject,
                    let items = json["items"] as? [JSONObject] else {
                        XCTFail("bad JSON")
                        return
                }

                let result = items.flatMap { try? Repo(object: $0) }
                XCTAssertTrue(result.count == 30)
                
            } catch {
                XCTFail("bad json")
            }
        }
    }

}
