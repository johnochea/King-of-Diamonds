import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'King of Diamonds',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black54,
        primarySwatch: Colors.grey,
      ),
      home: const IntroPage(),
    );
  }
}

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Icon(Icons.scale, size: 30, color: Color.fromARGB(255, 135, 0, 0),),
            const SizedBox(height: 15,),
            const Text(
              'Balance Scale',
              style: TextStyle(color: Colors.white, fontSize: 45),
                ),
            const SizedBox(height: 5,),
            const Text(
              'Difficulty: King of Diamonds',
              style: TextStyle(color: Color.fromARGB(100, 200, 200, 200), fontSize: 18),
            ),

            const SizedBox(height: 100,),
            TextButton(onPressed: () {print("heh");}, child: Text('Play', style: TextStyle(color: Colors.white, fontSize: 25),), style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 135, 0, 0),fixedSize: Size.fromWidth(175),),)
          ],
        ), 
      ),
    
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _wins = 0;
  int _loses = 0;
  int _myNumber = 0;
  var num_list = [0,0,0,0,0,0,0,0];
  var scores = [0,0,0,0,0,0,0,0];

  void _setWins() {
    setState(() {
      _wins++;
    });
  }

  void _setLoses() {
    setState(() {
      _loses++;
    });
  }

  void _setMyNumber() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   // title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_wins',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            const Text('hehe'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _setWins,
        tooltip: 'Increment',
        child: const Icon(Icons.person),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
