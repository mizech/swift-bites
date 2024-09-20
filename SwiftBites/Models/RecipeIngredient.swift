import Foundation
import SwiftData

@Model
final class RecipeIngredient {
    let id = UUID()
    @Relationship(deleteRule: .cascade)
    var ingredient: Ingredient? = nil
    var quantity: String
    var recipe: Recipe? = nil
    
    init(ingredient: Ingredient = Ingredient(),
        quantity: String = ""
    ) {
      self.id = UUID()
      self.ingredient = ingredient
      self.quantity = quantity
    }
}
