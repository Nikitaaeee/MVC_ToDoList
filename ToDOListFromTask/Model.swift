

import Foundation
import UIKit


class Item {
    var string: String
    var completed: Bool
    
    init(string: String, completed: Bool) {
        self.string = string
        self.completed = completed
    }
}

class Model {
    
    var sortedAscending: Bool = true

    
    var toDoItems: [Item] = [
                            Item(string: "Поесть", completed: false),
                            Item(string: "Попить", completed: true),
                            Item(string: "Поспать", completed: false),
                            ]
    


    func addItem(itemName: String, isCompleted: Bool = false) {
        toDoItems.append(Item(string: itemName, completed: isCompleted))
    }

    func removeItem(at index: Int) {
        toDoItems.remove(at: index)
    }



    func updateItem(at index: Int, with string: String) {
        toDoItems[index].string = string
    }

    func changeState(at item: Int) -> Bool {
        toDoItems[item].completed = !toDoItems[item].completed
    return toDoItems[item].completed
    }
    
    func sortByTitle() {
        toDoItems.sort {
            sortedAscending ? $0.string < $1.string : $0.string > $1.string
        }
    }
    
    func search() {
        
    }
}
