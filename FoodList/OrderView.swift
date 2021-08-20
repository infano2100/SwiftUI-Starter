//
//  OrderView.swift
//  FoodList
//
//  Created by Kitikorn kyankarn on 20/8/2564 BE.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order:Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                    .onDelete(perform:deleteItems)
                }
                
                Section {
                    NavigationLink(
                        destination: CheckoutView()
                       ){
                        Text("Place Order")
                    }
                }
                .disabled(order.items.isEmpty)
            }
            .navigationTitle("Order")
            .listStyle(InsetGroupedListStyle())
            .toolbar(content: {
                EditButton()
            })
        }
    }
    
    func deleteItems(as offsets: IndexSet){
        order.items.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
