
import Foundation
import SwiftData

@Model
class Category: Identifiable {
    let id = UUID()
    var name: String
    var recipes: [String]
    
    init(name: String, recipes: [String]) {
        self.name = name
        self.recipes = recipes
    }
}
