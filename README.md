
# Identifier 🧬

Type-safe identifiers.

## Installation

Identifier is distributed using [Swift Package Manager](https://swift.org/package-manager). To install it into a project, simply add it as a dependency within your Package.swift manifest:

```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/lucamegh/Identifier", from: "1.0.0")
    ],
    ...
)
```

## Usage

Let's have a look at this `User` type:

```swift
struct User {

    let id: String

    let fullName: String
}
```

While this implementation is fine, we could do even better by refactoring the `id` using Identifier.

```swift
struct User {

    let id: Identifier<Self, String>

    let fullName: String
}
```

To clean things up, let's introduce a new `typealias`:

```swift
extension User {

    typealias ID = Identifier<Self, String>
}

struct User {

    let id: ID

    let fullName: String
}
```

Much better! 

When using Identifier, it's no longer possible to pass the wrong identifier around:

```swift
func addToFavorites(id: Recipe.ID) { ... }

func addToFavorites(id: user.id) // This code won't compile!
```

## Credits

This library was inspired by John Sundell's [Type-safe identifiers in Swift](https://www.swiftbysundell.com/articles/type-safe-identifiers-in-swift/) article.
