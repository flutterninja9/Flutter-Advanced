import '../flavors.dart';

String getTitle(Flavor flavor) {
  switch (flavor) {
    case Flavor.staging:
      return 'Staging App';
    case Flavor.dev:
      return 'Development App';
    case Flavor.prod:
      return 'Production App';
    default:
      return 'No Flavor';
  }
}
