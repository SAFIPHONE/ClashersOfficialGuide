
import Foundation
import Alamofire

class CharacterCards {
        private var _nameID : String
        private var _name : String
        private var _rarity : String
        private var _type : String
        private var _description : String
        private var _arena : Int
        private var _elixirCost : Int
    
    var nameID : String {
        return _nameID
    }
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
    init (nameID: String , name:String , rarity:String , type:String , description:String , arena:Int , elixirCost:Int) {
        self._nameID = nameID
        self._name = name
        self._rarity = rarity
        self._type = type
        self._description = description
        self._arena = arena
        self._elixirCost = elixirCost
    }
    func downloadCardsDetails (completed: @escaping DownloadComplete) {
        let cardsURL = URL(string: Cards_URL)!
        Alamofire.request(cardsURL).responseJSON { response in
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let nameID = dict["idName"] as? String {
                    self._nameID = nameID
                }
            }
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String {
                    self._name = name.capitalized
                }
            }
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let rarity = dict["rarity"] as? String {
                    self._rarity = rarity.capitalized
                }
            }
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let type = dict["type"] as? String {
                    self._type = type.capitalized
                }
            }
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let description = dict["description"] as? String {
                        self._description = description.capitalized
                    }
            }
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let arena = dict["arena"] as? Int {
                    self._arena = arena
                }
            }
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let elixirCost = dict["elixirCost"] as? Int {
                    self._elixirCost = elixirCost
                }
            }
        }
        completed()
    }
}


