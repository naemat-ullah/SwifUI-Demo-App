//
//  ObservableObjectExampleView.swift
//  SwiftUI-Demo-App
//
//  Created by Naemat Ullah on 19/11/2024.
//

import SwiftUI


final class ExampleViewModel: ObservableObject {

    @Published var counter: Int = 99
}

struct ObservableObjectExampleView: View {

    @StateObject private var model: ExampleViewModel = ExampleViewModel()

    init() {
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
    ObservableObjectExampleView()
}
