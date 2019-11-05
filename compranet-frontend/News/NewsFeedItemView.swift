//
//  NewsFeedItemView.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct NewsFeedItemView: View {

    let item: NewsItem

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person.circle")
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)

                VStack(alignment: .leading) {
                    Text(item.owner.name)
                    Text(item.createdAt.description)
                }
                Spacer()
            }
            Text(item.text)
        }
        .padding()
    }
}

struct NewsFeedItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedItemView(item: .stub)
    }
}
