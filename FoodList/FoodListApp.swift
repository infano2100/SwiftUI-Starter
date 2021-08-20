//
//  FoodListApp.swift
//  FoodList
//
//  Created by Kitikorn kyankarn on 18/8/2564 BE.
//

import SwiftUI

@main
struct FoodListApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
