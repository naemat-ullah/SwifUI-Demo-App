//
//  ObservableExampleView.swift
//  SwiftUI-Demo-App
//
//  Created by Naemat Ullah on 20/11/2024.
//

import SwiftUI

@Observable
final class ObservableExampleViewModel {

    var counter: Int = 99 {
        didSet {
            print(counter)
        }
    }
}

struct ObservableExampleView: View {

    var model: ObservableExampleViewModel

    init(_ model: ObservableExampleViewModel) {
        self.model = model
        print(Self.self, #function)
    }

    var body: some View {
        let _ = Self._printChanges()
        VStack {
//            Text("Counter: \(model.counter)")
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
    ObservableExampleView(ObservableExampleViewModel())
}
