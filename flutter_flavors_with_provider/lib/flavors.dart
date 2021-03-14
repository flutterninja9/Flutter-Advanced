// Helps in making different entrypoints for a specific app
// Very useful in various testing and App Development phases scenarios
// Flavors are CI frindly
/// Run with :-
/// flutter run --flavor dev -t lib/main.dart
/// flutter run --flavor statging -t lib/main_staging.dart
/// flutter run --flavor prod -t lib/main_prod.dart
/// Here we would be using Providers to inject the correct flavor

enum Flavor { dev, staging, prod }
