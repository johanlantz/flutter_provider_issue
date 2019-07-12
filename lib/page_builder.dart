import 'dart:math';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'input_state.dart';

// This class build a page and assigns it a unique state
class PageBuilder {
  static Widget getPage(String contentKey) {
    InputState inputState = InputState(contentKey);

    String kk = Random().nextInt(1000).toString();
    print('New objectect uses key $kk');
    return MultiProvider(providers: [
      ChangeNotifierProvider<InputState>(builder: (context) => inputState),
    ], child: _BuilderPage(key: Key(kk)));
  }
}

  class _BuilderPage extends StatefulWidget {
  _BuilderPage({Key key})
      : super(key: key);

  @override
  _BuilderPageState createState() => _BuilderPageState();
}

class _BuilderPageState extends State<_BuilderPage> {
  @override
  Widget build(BuildContext context) {
    // This inputState is always the same one even though the objects change
    var inputState = Provider.of<InputState>(context);
    
    print('building object with key ${this.widget.key} with input_state=${inputState.hashCode}');

    return Text('Hello world from object=${this.widget.key} with InputState=${inputState.hashCode}');
  }
}