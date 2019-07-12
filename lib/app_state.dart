import 'package:flutter/widgets.dart';
import 'page_builder.dart';

// This class keeps track of which dynamic page to show
class AppState with ChangeNotifier {
  Widget dynamicPage = PageBuilder.getPage('page1');

  changeDynamicPage() {
    // Here we replace the original widget with another one. The problem is that 
    // while the object is replaced, the InputState stays the same (the one from the initial Widget for page1)
    this.dynamicPage = PageBuilder.getPage('page2');
    notifyListeners();
  }
}