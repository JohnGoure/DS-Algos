//
//  InsertionSort.swift
//  DataStructuresAndAlgorithms
//
//  Created by john goure on 5/10/18.
//  Copyright © 2018 john goure. All rights reserved.
//

import Foundation

var unsortedArray = [Int]()

func sort(_ array: [Int]) -> [Int]{
    unsortedArray = array
    var outterIter = 1
    
    while outterIter < unsortedArray.count {
        var innerIter = outterIter
        while innerIter > 0 && unsortedArray[innerIter - 1] > unsortedArray[innerIter] {
            swap(innerIter - 1, innerIter)
            innerIter -= 1
        }
        outterIter += 1
    }
    
    return unsortedArray
}

func swap(_ firstPosition: Int, _ secondPosition: Int) {
    let temp = unsortedArray[firstPosition]
    unsortedArray[firstPosition] = unsortedArray[secondPosition]
    unsortedArray[secondPosition] = temp
}

// Insertion Sort Test

// Should sort an unsorted array of integers

func insertionSortTest() {
    print("Should sort and unsorted array of integers.")
    let array = [3,6,9,7,2,1,8,10,42,15,12,86,22,11]
    print("Unsorted array: \(array)")
    
    print(sort(array))
}
