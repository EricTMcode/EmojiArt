//
//  Extensions.swift
//  Emoji Art
//
//  Created by Eric on 23/09/2024.
//

import Foundation

extension String {
    // removes any duplicate Characters
    // preserves the order of the Characters
    var uniqued: String {
        // not super efficient
        // would only want to use is on small(ish) strings
        // and we wouldn't want to call it in a tight loop or something
        reduce(into: "") { sofar, element in
            if !sofar.contains(element) {
                sofar.append(element)
            }
        }
    }
}
