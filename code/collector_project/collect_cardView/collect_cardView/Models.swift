//
//  Models.swift
//  collect_cardView
//
//  Created by Danb on 2017. 2. 20..
//  Copyright © 2017년 Danb. All rights reserved.
//

import Foundation
import RealmSwift

class FolderData : Object {
    dynamic var id = NSUUID().uuidString
    dynamic var name : String = ""
    let items = List<Source>()
    
    override static func primaryKey() -> String? {
        return "id"
    }
}


class Source : Object {
    dynamic var id = NSUUID().uuidString
    dynamic var datasource : String = ""
    // dynamic var memo : memodataSG?
    
    override static func primaryKey() -> String? {
        return "id"
    }

}

/*
class Link : Source {
    
}
 */

