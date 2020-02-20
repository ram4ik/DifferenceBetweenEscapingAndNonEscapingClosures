//
//  ContentView.swift
//  DifferenceBetweenEscapingAndNonEscapingClosures
//
//  Created by ramil on 20.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
        }.onAppear() {
            let ec = EscapingClosure()
            ec.addTwoNumbers()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
