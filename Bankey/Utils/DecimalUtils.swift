//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Weerawut Chaiyasomboon on 21/12/2567 BE.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
