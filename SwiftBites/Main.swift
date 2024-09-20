import SwiftUI

/// The main view that appears when the app is launched.
struct ContentView: View {
  @Environment(\.modelContext) var context
  var body: some View {
    TabView {
      RecipesView(context: context)
        .tabItem {
          Label("Recipes", systemImage: "frying.pan")
        }

      CategoriesView(context: context)
        .tabItem {
          Label("Categories", systemImage: "tag")
        }

      IngredientsView(context: context)
        .tabItem {
          Label("Ingredients", systemImage: "carrot")
        }
    }
  }
}
