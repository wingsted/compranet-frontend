//
//  Dashboard.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        TabView {
            NewsFeedView(items: Array(repeating: NewsItem.stub, count: 10))
                .tabItem {
                    Image(systemName: "doc.plaintext")
                    Text("News")
                }
          //  EmployeeListView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Employees")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
