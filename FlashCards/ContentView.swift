//
//  ContentView.swift
//  FlashCards
//
//  Created by Naveed on 08/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var cards = Array<Card>(repeating: .mock, count: 10)
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        CardView(card: cards[index]) {
                            withAnimation {
                                removeCard(at: index)
                            }
                        }
                        .stacked(at: index, in: cards.count)
                    }
                }
            }
        }
    }
    func removeCard(at index: Int) {
        cards.remove(at: index)
    }
}

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(y: offset * 10)
    }
}

#Preview {
    ContentView()
}
