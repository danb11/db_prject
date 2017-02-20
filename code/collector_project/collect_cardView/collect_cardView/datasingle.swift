//
//  datasingle.swift
//  collect_cardView
//
//  Created by Danb on 2017. 2. 16..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation

private let Data = Datasingle()

class Datasingle {
    
    var linkdataSG : Array<linkdata> = []
    var memodataSG : Array<memodata> = []

    class var sharedInstance: Datasingle {
        return Data
    }
}


/*
class DataSingle {
    static let sharedInstance : DataSingle = {
        let instance = DataSingle()
        return instance
    }()
    
    var linkdataSG : Array<linkdata> = []
    var memodataSG : Array<memodata> = []
}
 */
