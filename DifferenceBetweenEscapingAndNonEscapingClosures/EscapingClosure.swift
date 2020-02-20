//
//  EscapingClosure.swift
//  DifferenceBetweenEscapingAndNonEscapingClosures
//
//  Created by ramil on 20.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class EscapingClosure {
    
    func addTwoNumbers() {
        
        print("Step 1")
        
        performSumFor(10, andSecondNumber: 20) { [weak self] (result) in
            
            guard let _ = self else { return }
            print("Result == \(result)")
        }
        
        print("Last step")
    }
    
    func performSumFor(_ num1: Int, andSecondNumber num2: Int, completionHandler: @escaping  (_ result: Int) -> Void) {
        
        print("Step 2")
        
        let result = num1 + num2
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
            
            print("Step 3")
            
            completionHandler(result)
        }
    }
}
