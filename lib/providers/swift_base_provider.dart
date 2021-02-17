import 'package:flutter/foundation.dart';
import 'package:swift/core/loading_state.dart';

abstract class SwiftBaseProvider extends ChangeNotifier {
  LoadingState loadingState = LoadingState.waiting;

  toggleLoadingState() {
    loadingState = (loadingState == LoadingState.loading)
        ? LoadingState.waiting
        : LoadingState.loading;
    notifyListeners();
  }
}
