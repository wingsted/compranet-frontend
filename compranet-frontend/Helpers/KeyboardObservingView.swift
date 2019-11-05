//
//  KeyboardObservingView.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

public struct KeyboardObservingView<Content: View>: View {

    @EnvironmentObject var keyboard: Keyboard
    @Environment(\.colorScheme) var colorScheme

    let extraPadding: CGFloat
    let shouldMove: Bool
    let content: Content

    public init(shouldMove: Bool = true,
                extraPadding: CGFloat = 0,
                @ViewBuilder builder: () -> Content) {
        self.extraPadding = extraPadding
        self.shouldMove = shouldMove
        self.content = builder()
    }

    public var body: some View {
        content
            .padding([.bottom], shouldMove ? keyboard.state.height + extraPadding : 0)
            .animation(.easeOut(duration: keyboard.state.animationDuration))
            // Major hack alert
            // Creates an "extra" background that we can listen for taps to.
            // If there is a keyboard, we hide it.
            .background(colorScheme == .light ? Color.white : Color.black)
            .onTapGesture {
                if self.keyboard.state.height != 0 {
                    self.endEditing()
                }
        }
    }

}

extension View {

    func endEditing() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                        to: nil,
                                        from: nil,
                                        for: nil)
    }

}
