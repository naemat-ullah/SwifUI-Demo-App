//
//  ListExampleView.swift
//  SwiftUI-Demo-App
//
//  Created by Naemat Ullah on 20/11/2024.
//

import SwiftUI

@Observable
class ListExampleViewModel {

    var counter: Int = 99 {
        didSet {
            print(counter)
        }
    }

    var values: [Int] = [Int](1...100_000)
}

struct ListExampleView: View {

    var model: ListExampleViewModel

    init(_ model: ListExampleViewModel) {
        self.model = model
        print(Self.self, #function)
    }

    var body: some View {
        let _ = Self._printChanges()
        VStack {
            List {
                ForEach(model.values, id: \.self) {
                    Text(String($0))
                        .padding()
                        .debugBackground()
                }
            }
            .listStyle(.plain)
            .frame(height: 200.0)
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

#Preview {
    ListExampleView(ListExampleViewModel())
}
