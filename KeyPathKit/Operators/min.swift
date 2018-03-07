//
//  min.swift
//  KeyPathKit
//
//  Created by Vincent on 07/03/2018.
//  Copyright © 2018 Vincent. All rights reserved.
//

import Foundation

extension Collection {
    func min<T: Comparable>(_ attribute: KeyPath<Element, T>) -> Element? {
        guard let initValue = first else { return nil }
        
        return reduce(initValue) { $0[keyPath: attribute] < $1[keyPath: attribute] ? $0 : $1 }
    }
}
