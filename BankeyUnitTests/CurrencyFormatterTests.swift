//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Weerawut Chaiyasomboon on 23/12/2567 BE.
//

import XCTest

//Can access all files in Bankey Target
@testable import Bankey

class CurrencyFormatterTests: XCTestCase {
    var formatter: CurrencyFormatter!
    
    //setUp get call once per test
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreakIntoDollarsAndCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466)
        XCTAssertEqual(result, "$929,466.00")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0)
        XCTAssertEqual(result, "$0.00")
    }
    
    func testDollarsFormattedWithCurrencySymbol() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        let result = formatter.dollarsFormatted(929466)
        XCTAssertEqual(result, "\(currencySymbol)929,466.00")
    }
}
