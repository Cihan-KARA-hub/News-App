enum ServicePath {
  health,
  bitcoin,
  entertainment,
  business,
  technology,
  sports,
  general,
  science,
  Apikey
}

extension ServisPathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.bitcoin:
        return 'bitcoin';
      case ServicePath.Apikey:
        return 'adbb8aade0544d4fbcb6f7402de7b610';

      case ServicePath.health:
        return 'health';
      case ServicePath.entertainment:
        return 'entertainment';
      case ServicePath.business:
        return 'business';
      case ServicePath.technology:
        return 'technology';
      case ServicePath.sports:
        return 'sports';
      case ServicePath.general:
        return 'general';
      case ServicePath.science:
        return 'science';
    }
  }
}

enum ServicePathCountry {
  us,
  tr,
  fs,
}

extension ServisPathExtensionCountry on ServicePathCountry {
  String get rawValues {
    switch (this) {
      case ServicePathCountry.tr:
        return 'tr';
      case ServicePathCountry.us:
        return 'us';
      case ServicePathCountry.fs:
        return 'fs';
    }
  }
}
