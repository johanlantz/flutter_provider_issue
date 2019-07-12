import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
      providers: [
        ChangeNotifierProvider<AppState>(builder: (context) => AppState())
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Press the button to change page\n\n',
            ),
            Text(
              'The problem is that while the InputState is created for each page which you can see in the log the value in the build function never changes. Provider.of always uses the first value only.\n\n',
            ),
            appState.dynamicPage
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {appState.changeDynamicPage();},
        child: Icon(Icons.add),
      ),
    );
  }
}
