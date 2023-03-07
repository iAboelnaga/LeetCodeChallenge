//
//  ViewController.swift
//  LeetCodeChallenge
//
//  Created by Aboelnaga on 06/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let result = findKthPositive([1,3], 5)
//        print("The \(5)th missing integer is \(result)")
        
//        let result = numberOfSteps(8)
//        print(result)
        
        let words = ["cool","lock","cook"]
        print(commonChars(words))
        
    }
    
    func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        var missingArr: [Int] = []
        var diff = 0
        
        if (1 <= arr.count && arr.count <= 1000) {
            if arr.first != 1 {
                for i in 1...arr.first!-1 {
                    missingArr.append(i)
                }
            }
            for (index, value) in arr.enumerated() {
                if value != arr.last {
                    diff = arr[index + 1] - arr[index]
                }else {
                    diff = 0
                }
                if (diff > 1) {
                    for i in 1...diff-1 {
                        missingArr.append(value + i)
                        if missingArr.count >= k {
                            return missingArr[k-1]
                        }
                    }
                }
                if (diff == 1 && value == arr.last) || (diff == 0) {
                    for i in 1...k {
                        missingArr.append(value + i)
                        if missingArr.count >= k {
                            return missingArr[k-1]
                        }
                    }
                }
            }
        }
        return 0
    }
    
    func numberOfSteps(_ num: Int) -> Int {
        var result = 0
        var num = num
        while num > 0 {
            if num % 2 == 0 {
                num = num / 2
                result += 1
            }else {
                num = num - 1
                result += 1
            }
        }
        return result
    }
    
    func commonChars(_ words: [String]) -> [String] {
        var result: [String] = []
        var stringBuffer: [String] = []
        var buffer: [[String]] = []
        
        for (index, word) in words.enumerated() {
            for (innerIndex, value) in word.enumerated(){
                if words.contains(String(value)) {
                    
                }
            }
        }
        
        buffer.append(stringBuffer)

        
        return buffer.first!
    }
}
