import 'package:swift/providers/swift_base_provider.dart';

class SwiftNavigationProvider extends SwiftBaseProvider {
  int _mIndex = 0;
  get mIndex => _mIndex;

  setIndex({int index}) {
    _mIndex = index;
    notifyListeners();
  }
}
