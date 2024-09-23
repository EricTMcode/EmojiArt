//
//  EmojiArtDocumentView.swift
//  Emoji Art
//
//  Created by Eric on 23/09/2024.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    typealias Emoji = EmojiArtDocument.Emoji

    @ObservedObject var document: EmojiArtDocument

    private let emojis = "👻🍎😃🤪☹️🤯🐶🐭🦁🐵🦆🐝🐢🐄🐖🌲🌴🌵🍄🌞🌎🔥🌈🌧️🌨️☁️⛄️⛳️🚗🚙🚓🚲🛺🏍️🚘✈️🛩️🚀🚁🏰🏠❤️💤⛵️"

    private let paletteEmojiSize: CGFloat = 40

    var body: some View {
        VStack(spacing: 0) {
            documentBody
            ScrollingEmojis(emojis)
                .font(.system(size: paletteEmojiSize))
                .padding(.horizontal)
                .scrollIndicators(.hidden)
        }
    }

    private var documentBody: some View {
        GeometryReader { geometry in
            ZStack {
                Color.white
                AsyncImage(url: document.backgroud)
                    .position(Emoji.Position.zero.in(geometry))
                ForEach(document.emojis) { emoji in
                    Text(emoji.string)
                        .font(emoji.font)
                        .position(emoji.position.in(geometry))
                }
            }
        }
    }
}



struct ScrollingEmojis: View {
    let emojis: [String]

    init(_ emojis: String) {
        self.emojis = emojis.uniqued.map(String.init)
    }

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis, id: \.self) { emoji in
                    Text(emoji)
                }
            }
        }
    }
}

#Preview {
    EmojiArtDocumentView(document: EmojiArtDocument())
}
