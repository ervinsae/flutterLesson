import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/PageCard.dart';
import 'package:flutter_app/pageLayout.dart';
import 'wordGen.dart';
import 'widgetTest.dart';
import 'signature.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red, //只能有三原色：red,yellow,blue
        //primaryColor: Colors.black
      ),

      //跳转页面

      //home: PageCard(),
      //home: PageLayout(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: new RandomWords(),
      //home: new WidgetTest()
      //home: new SignatureTest(),

      /*home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        //body: PageCard()
        //body: MyHomePage(title: 'Flutter Demo Home Page'),
        body: RandomWords(),
        ),*/
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You have pushed the button this many times:"),

            //new RandomWords(),

            Text(
              '当前次数：$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
