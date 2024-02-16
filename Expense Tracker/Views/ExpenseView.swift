//
//  ExpenseView.swift
//  Expense Tracker
//
//  Created by Palatip Jantawong on 13/2/2567 BE.
//

import SwiftUI
import CoreData

struct ExpenseView: View {
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var expenses: FetchedResults<Expense>
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(.vertical){
                    VStack{
                        HStack{
                            Text("Welcome")
                                .font(.title)
                            Spacer()
                        }
                        ForEach(expenses) { expense in
                            NavigationLink(destination: EditExpenseView(expense: expense)) {
                                ExpenseDetail(amount: String(expense.amount), data: expense.date!, name: expense.name!, type: expense.type ?? "Transportation")
                            }
                        }
                    }.scrollIndicators(.hidden)
                }
            }
            .padding()
            .navigationTitle("Expenses")
            
        }
    }
}

#Preview {
    ExpenseView()
}
