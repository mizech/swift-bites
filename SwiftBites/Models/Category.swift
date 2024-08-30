
import Foundation
import SwiftData

@Model
final class Category: Identifiable {
    let id = UUID()
    @Attribute(.unique)
    var name: String
    var recipes: [String]
    
    init(name: String, recipes: [String]) {
        self.name = name
        self.recipes = recipes
    }
}
