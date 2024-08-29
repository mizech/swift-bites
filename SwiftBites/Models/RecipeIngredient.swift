import Foundation
import SwiftData

@Model
class RecipeIngredient {
    let id = UUID()
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
