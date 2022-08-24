//
//  Date.swift
//  test-ondoc
//
//  Created by Roman Resenchuk on 23/8/2022.
//

import Foundation

extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
