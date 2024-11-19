//
//  PODExample.swift
//  SwiftUI-Demo-App
//
//  Created by Naemat Ullah on 20/11/2024.
//

import SwiftUI

struct PODExample: View {
    var count : Int = 10
    init(){
        print(_isPOD(PODExample.self))
       // check isPOD
    }
    var body: some View {
       Text("count is \(count)")
    }
}

#Preview {
    PODExample()
}
