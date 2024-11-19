//
//  StateExampleView.swift
//  SwiftUI-Demo-App
//
//  Created by Naemat Ullah on 19/11/2024.
//

import SwiftUI

struct StateExampleView: View {
    @State private var counter: Int = 99

        var body: some View {
            VStack {
                Text("Counter: \(counter)")
                Button {
                    counter += 1
                } label: {
                    Text("Counter +1")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
}

#Preview {
    StateExampleView()
}
