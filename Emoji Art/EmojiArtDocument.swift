//
//  EmojiArtDocument.swift
//  Emoji Art
//
//  Created by Eric on 22/09/2024.
//

import SwiftUI

class EmojiArtDocument: ObservableObject {
    typealias Emoji = EmojiArt.Emoji

    private var emojiArt = EmojiArt()

    var emojis: [Emoji] {
        emojiArt.emojis
    }

    var backgroud: URL? {
        emojiArt.background
    }

    // MARK: - Intent(s)

    func setBackground(_ url: URL?) {
        emojiArt.background = url
    }
}
