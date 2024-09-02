import Foundation
import SwiftData

@Model
final class Recipe: Identifiable {
    let id = UUID()
    @Attribute(.unique)
    var name: String
    var summary: String
    var category: Category?
    var serving: Int
    var time: Int
    @Relationship(deleteRule: .cascade, inverse: \RecipeIngredient.recipe)
    var ingredients: [RecipeIngredient]
    var instructions: String
    var imageData: Data?
    
    init(name: String = "",
      summary: String = "",
      category: Category? = nil,
      serving: Int = 1,
      time: Int = 5,
      ingredients: [RecipeIngredient] = [],
      instructions: String = "",
      imageData: Data? = nil
    ) {
      self.name = name
      self.summary = summary
      self.category = category
      self.serving = serving
      self.time = time
      self.ingredients = ingredients
      self.instructions = instructions
      self.imageData = imageData
    }
}
