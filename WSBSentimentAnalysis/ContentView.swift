//
//  ContentView.swift
//  WSBSentimentAnalysis
//
//  Created by Vincent Cloutier on 2021-10-14.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModelImpl(service: ServiceImpl())
    var body: some View {
        Group {
            if vm.stocks.isEmpty {
                ProgressView()
            } else {
                List {
                    // Loop through dummy data
                    ForEach(vm.stocks, id: \.ticker) { item in
                        VStack (alignment: .leading) {
                            Text("\(item.ticker):")
                                .font(.title)
                                .bold()
                         
                            .font(.caption)
                        }
                    }
                }
            }
        }
        .task {
            await vm.getStocks()
        }
        
    }
}

