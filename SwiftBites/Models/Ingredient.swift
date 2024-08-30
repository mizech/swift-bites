import Foundation
import SwiftData

@Model
final class Ingredient: Identifiable {
    let id = UUID()
    @Attribute(.unique)
    var name: String
    
    init(name: String = "") {
        self.name = name
    }
}
