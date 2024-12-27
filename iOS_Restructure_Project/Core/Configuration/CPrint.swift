//
//  CPrint.swift
//  iOS_Restructure_Project
//
//  Created by ITD-Phly Sary on 25/12/24.
//

import Foundation

public func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
#if !PROD
    Swift.print(items.map { "\($0)" }.joined(separator: separator), terminator: terminator)
#endif
}
