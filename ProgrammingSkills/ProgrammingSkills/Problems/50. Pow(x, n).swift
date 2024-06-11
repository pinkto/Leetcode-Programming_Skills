//
//  50. Pow(x, n).swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class MyPowClass {
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1.0
        }

        if n < 0 {
            return 1 / myPow(x, -n)
        }

        let half = myPow(x, n / 2)
        
        if n % 2 == 0 {
            return half * half
        } else {
            return half * half * x
        }
    }
}
