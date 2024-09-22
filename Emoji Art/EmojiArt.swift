//
//  EmojiArt.swift
//  Emoji Art
//
//  Created by Eric on 22/09/2024.
//

import Foundation

struct EmojiArt {
    var background: URL?
    var emojis = [Emoji]()

    struct Emoji {
        let string: String
        var position: Position
        var size: Int

        struct Position {
            var x: Int
            var y: Int
        }
    }
}
