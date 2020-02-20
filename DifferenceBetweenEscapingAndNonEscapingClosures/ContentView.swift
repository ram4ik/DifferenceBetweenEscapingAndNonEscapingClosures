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
            self.addTwoNumbers()
        }
    }
    
    func addTwoNumbers() {
        
        print("Step 1")
        
        performSumFor(10, andSecondNumber: 20) { (result) in
            print("Result == \(result)")
        }
        
        print("Last step")
    }
    
    func performSumFor(_ num1: Int, andSecondNumber num2: Int, completionHandler: (_ result: Int) -> Void) {
        
        print("Step 2")
        
        let result = num1 + num2
        
        print("Step 3")
        
        completionHandler(result)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
