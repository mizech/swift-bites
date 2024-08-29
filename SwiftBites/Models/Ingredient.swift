import Foundation
import SwiftData

@Model
class Ingredient: Identifiable {
    let id = UUID()
    var name: String
    
    init(name: String = "") {
        self.name = name
    }
}
