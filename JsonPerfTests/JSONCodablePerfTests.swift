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

                _ = try items.map{
                    try Repo(object: $0)
                }
            } catch {
                XCTFail("bad json")
            }
        }
    }

}
