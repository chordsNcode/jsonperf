//
//  SwiftyPerfTests.swift
//  JsonPerf
//
//  Created by Matt Dias on 9/27/16.
//

import XCTest
import SwiftyJSON

@testable import JsonPerf

class SwiftyPerfTests: XCTestCase {
    
    func testSwiftyPerformance() {
        self.measure {
            let json = JSON(data: self.data!)

            if let items = json["items"].array {
                _ = items.map{ 
                    Repo(swifty: $0)
                }
            }
        }
    }
}
