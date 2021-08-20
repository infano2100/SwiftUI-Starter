//
//  MainView.swift
//  FoodList
//
//  Created by Kitikorn kyankarn on 20/8/2564 BE.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage:"list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage:"square.and.pencil")
                }
        }
       
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
