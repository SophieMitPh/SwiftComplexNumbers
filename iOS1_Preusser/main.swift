//
//  main.swift
//  iOS1Preusser
//
//  Created by Preußer, Sophie on 15.10.19.
//  Copyright © 2019 Preußer, Sophie. All rights reserved.
//

import Foundation

//print("Type a random number")

//let test:String! = readLine()
//var i = Double(test)

//var error: Double? = 0.0

/*func readDouble(){
    print("Double: \(i)"  ?? error)
}

readDouble()*/

/*print("Type a random number")

let test:String! = readLine()
var i = Complex(test)*/

// Intitial complex number
var c = Complex(re: 1.0, im: 2.0)
// 5.2 Add (1.2 + 2.4 i)
let complexInput = Complex(re: 1.2, im: 2.4)
print(complexInput.re)
c.incrementBy(complex: complexInput)

// 5.3 Add 2.2 to the real part
c.incrementBy(realAmount: 2.2)
// 5.4 Add 0.6 to imaginary part
c.incrementBy(imaginaryAmount: 0.6)
// result 2.2 + 4.4 i
// 5.5 Multiply with complex number (0.5 + 1.0 i)
// 5.6 Rotate by pi (Double.pi)
// 5.7 Calculatie with plus the sum from your result and the complex number (0.2 + 0.9 i)
