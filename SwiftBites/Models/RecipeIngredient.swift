import Foundation
import SwiftData

@Model
final class RecipeIngredient {
    let id = UUID()
    @Relationship(deleteRule: .nullify)
    var ingredient: Ingredient
    var quantity: String
    var recipe: Recipe?
    
    init(ingredient: Ingredient = Ingredient(),
        quantity: String = ""
    ) {
      self.id = UUID()
      self.ingredient = ingredient
      self.quantity = quantity
    }
}
