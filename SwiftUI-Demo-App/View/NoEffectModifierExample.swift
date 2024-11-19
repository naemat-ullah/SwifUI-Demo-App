//
//  NoEffectModifierExample.swift
//  SwiftUI-Demo-App
//
//  Created by Naemat Ullah on 20/11/2024.
//

import SwiftUI

struct NoEffectModifierExample: View {
    @State var isHighlighted : Bool = false
    init() {
       // print body
    }
    var body: some View {
      VStack {
        if isHighlighted {
          CustomView()
            .opacity(0.8)
        } else {
          CustomView()
        }
        // ...
      }
    }
    
}
struct CustomView : View {
    var body: some View {
        Color.black
    }
}

#Preview {
    NoEffectModifierExample()
}
