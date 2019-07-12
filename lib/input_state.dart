import 'package:flutter/widgets.dart';

class InputState with ChangeNotifier {

  String currentContentKey;

  InputState(String contentKey) {
    currentContentKey = contentKey;
    print('Creating input state for $contentKey with hashCode ${this.hashCode}');
  }
}