//
//  ListProblemFixExample.swift
//  SwiftUI-Demo-App
//
//  Created by Naemat Ullah on 20/11/2024.
//

import SwiftUI

@Observable
final class CounterViewModel {

    var counter: Int = 99 {
        didSet {
            print(counter)
        }
    }

    var values: [Int] = [Int](1...1_000_000)
}

struct ListProblemFixExample: View {

    var model: CounterViewModel

    init(_ model: CounterViewModel) {
        self.model = model
        print(Self.self, #function)
    }

    var body: some View {
        let _ = Self._printChanges()
        VStack {
            ContentListView(values: model.values)
            Text("Counter: \(model.counter)")
            Button {
                model.counter += 1
            } label: {
                Text("Counter +1")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .debugBackground()
    }
}

// MARK: - Inside types

private extension ListProblemFixExample {

    struct ContentListView: View, Equatable {

        let values: [Int]

        init(values: [Int]) {
            self.values = values
            print(Self.self, #function)
        }

        var body: some View {
            let _ = Self._printChanges()
            List {
                ForEach(values, id: \.self) {
                    Text(String($0))
                        .padding()
                        .debugBackground()
                }
            }
            .listStyle(.plain)
            .frame(height: 200.0)
            .padding()
            .debugBackground()
        }
    }
}


#Preview {
    ListProblemFixExample(CounterViewModel())
}
