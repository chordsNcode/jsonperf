//
//  NormalPerfTest.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/27/16.
//

import XCTest

@testable import JsonPerf

class NormalPerfTest: XCTestCase {
    
    func testNormalPerformance() {
        self.measure {
            do {
                guard let json = try JSONSerialization.jsonObject(with: self.data!) as? MyJSON,
                    let items = json["items"] as? [MyJSON] else {
                        XCTFail("bad JSON")
                        return
                }

                let result = items.flatMap { try? Repo(myJson: $0) }
                XCTAssertTrue(result.count == 30)
                
            } catch {
                XCTFail("bad json")
            }
        }
    }
}
