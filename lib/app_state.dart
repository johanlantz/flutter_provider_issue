import 'package:flutter/widgets.dart';
import 'page_builder.dart';

class AppState with ChangeNotifier {
  Widget dynamicPage = PageBuilder.getPage('page1');

  changeDynamicPage() {
    this.dynamicPage = PageBuilder.getPage('page2');
    notifyListeners();
  }
}