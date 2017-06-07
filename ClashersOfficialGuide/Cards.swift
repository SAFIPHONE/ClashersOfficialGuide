//
//  Cards.swift
//  ClashersOfficialGuide
//
//  Created by Waleed Kararty on 6/7/17.
//  Copyright © 2017 Waleed Kararty. All rights reserved.
//

import Foundation


class characterCards {
        private var _name : String
        private var _rarity : String
        private var _type : String
        private var _description : String
        private var _arena : Int
        private var _elixirCost : Int
    
    var name : String {
        return _name
    }
    var rarity : String {
        return _rarity
    }
    var type : String {
        return _type
    }
    var description : String {
        return _description
    }
    var arena : Int {
        return _arena
    }
    var elixirCost : Int {
        return _elixirCost
    }
    init (name:String , rarity:String , type:String , description:String , arena:Int , elixirCost:Int) {
        self._name = name
        self._rarity = rarity
        self._type = type
        self._description = description
        self._arena = arena
        self._elixirCost = elixirCost
    }
}



