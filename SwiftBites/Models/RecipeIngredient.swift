import Foundation
import SwiftData

@Model
final class RecipeIngredient {
    let id = UUID()
    @Relationship
    var ingredient: Ingredient
    var quantity: String
    
    init(ingredient: Ingredient = Ingredient(),
        quantity: String = ""
    ) {
      self.id = UUID()
      self.ingredient = ingredient
      self.quantity = quantity
    }
}
