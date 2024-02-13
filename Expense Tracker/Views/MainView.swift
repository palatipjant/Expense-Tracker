//
//  ContentView.swift
//  Expense Tracker
//
//  Created by Palatip Jantawong on 13/2/2567 BE.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ExpenseView()
                .tabItem {
                    Label("Expense", systemImage: "dollarsign")
                }
            
            AddExpenseView()
                .tabItem {
                    Label("Add Expense", systemImage: "plus")
                }
        }
    }
}

#Preview {
    MainView()
}
