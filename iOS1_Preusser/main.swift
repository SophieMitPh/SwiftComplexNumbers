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

func readComplexNumber(defaultReal: Double, defaultImaginary: Double) -> Complex{
    print("Creating a complex number")
    
    return Complex(
        re: askQuestionToDouble(question: "Enter real number:", defaultDouble: defaultReal),
        im: askQuestionToDouble(question: "Enter imaginary number:", defaultDouble: defaultImaginary)
    )
}

func askQuestionToDouble(question: String, defaultDouble: Double) -> Double {
    print(question)
    let InputString:String! = readLine()
    
    return Double(InputString) ?? defaultDouble
}

// Intitial complex number
var c = readComplexNumber(defaultReal: 1.0, defaultImaginary: 2.0)
c.printCurrentComplexNumber()

// 5.2 Add (1.2 + 2.4 i)
let complexInput = readComplexNumber(defaultReal: 1.2, defaultImaginary: 2.4)
c.incrementBy(complex: complexInput)
c.printCurrentComplexNumber()

// 5.3 Add 2.2 to the real part
c.incrementBy(realAmount: askQuestionToDouble(question: "Increment real number by amount:", defaultDouble: 2.2))
c.printCurrentComplexNumber()

// 5.4 Add 0.6 to imaginary part
c.incrementBy(imaginaryAmount: askQuestionToDouble(question: "Increment imaginary number by amount", defaultDouble: 0.6))
c.printCurrentComplexNumber()

// result 2.2 + 4.4 i
// 5.5 Multiply with complex number (0.5 + 1.0 i)
let multiplyComplex = readComplexNumber(defaultReal: 0.5, defaultImaginary: 1.0)
c.multiplyBy(complex: multiplyComplex)
c.printCurrentComplexNumber()

// 5.6 Rotate by pi (Double.pi)
print("Rotating by angle pi:")
c.rotateBy(complex: multiplyComplex, angle: Double.pi)
c.printCurrentComplexNumber()

// 5.7 Calculatie with plus the sum from your result and the complex number (0.2 + 0.9 i)
let plusComplex = readComplexNumber(defaultReal: 0.2, defaultImaginary: 0.9)
let plus = c.plus(complex: plusComplex)
plus.printCurrentComplexNumber()
