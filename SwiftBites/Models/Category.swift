
import Foundation
import SwiftData

@Model
final class Category: Identifiable {
    let id = UUID()
    @Attribute(.unique)
    var name: String
    @Relationship(deleteRule: .cascade, inverse: \Recipe.category)
    var recipes: [Recipe] = []
    
    init(name: String, recipes: [Recipe]) {
        self.name = name
        self.recipes = recipes
    }
}
