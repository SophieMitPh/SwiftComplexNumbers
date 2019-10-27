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

func readComplexNumber() -> Complex{
    print("Creating a complex number")
    print("Enter real number:")
    let InputReal:String! = readLine()
    let InitReal = Double(InputReal) ?? 1.0

    print("Enter imaginary number:")
    let InputImaginary:String! = readLine()
    let InitImaginary = Double(InputImaginary) ?? 2.0
    
    return Complex(re: InitReal, im: InitImaginary)
}

// Intitial complex number
var c = readComplexNumber()
// 5.2 Add (1.2 + 2.4 i)
let complexInput = readComplexNumber()
print(complexInput.re)
c.incrementBy(complex: complexInput)

// 5.3 Add 2.2 to the real part
c.incrementBy(realAmount: 2.2)
// 5.4 Add 0.6 to imaginary part
c.incrementBy(imaginaryAmount: 0.6)
// result 2.2 + 4.4 i
// 5.5 Multiply with complex number (0.5 + 1.0 i)
let multiplyComplex = Complex(re: 0.5, im: 1.0)
c.multiplyBy(complex: multiplyComplex)
// 5.6 Rotate by pi (Double.pi)
c.rotateBy(complex: multiplyComplex, angle: Double.pi)
// 5.7 Calculatie with plus the sum from your result and the complex number (0.2 + 0.9 i)
let plusComplex = Complex(re: 0.2, im: 0.9)
let plus = c.plus(complex: plusComplex)
print("new incremented complex \((plus.re * 1000).rounded() / 1000) + \(plus.im)")

