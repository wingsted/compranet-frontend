//
//  NewsFeedView.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct NewsFeedView: View {

    let items: [NewsItem]

    var body: some View {
        NavigationView {
            List(items) { item in
                NewsFeedItemView(item: item)
            }
            .navigationBarTitle("News Feed")
        }
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView(items: Array(repeating: NewsItem.stub, count: 10))
    }
}
