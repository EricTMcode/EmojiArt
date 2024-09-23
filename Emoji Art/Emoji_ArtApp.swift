//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Eric on 22/09/2024.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    @StateObject var defaultDocument = EmojiArtDocument()

    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
        }
    }
}
