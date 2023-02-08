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

//
//
//
//
// INTRO PAGE
//
//
//
//

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  final TextEditingController userNameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userNameController.dispose();
    super.dispose();
  }

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

            TextField(
              controller: userNameController,
              obscureText: false,
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter username',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),

            TextButton(onPressed: () {
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage(title: userNameController.text))
            );
            }, child: Text('Start', style: TextStyle(color: Colors.white, fontSize: 25),), style: TextButton.styleFrom(backgroundColor: Color.fromARGB(255, 135, 0, 0),fixedSize: Size.fromWidth(175),),)
          ],
        ), 
      ),
    
    );
    
  }
}

//
//
//
//
// GAME PAGE
//
//
//
//

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

  int _score1 = 0;
  int _score2 = 0;
  int _score3 = 0;
  int _score4 = 0;
  int _score5 = 0;
  int _score6 = 0;
  int _score7 = 0;
  int _score8 = 0;

  String _player1text = '-?-';
  String _player2text = '-?-';
  String _player3text = '-?-';
  String _player4text = '-?-';
  String _player5text = '-?-';
  String _player6text = '-?-';
  String _player7text = '-?-';
  String _player8text = '-?-';

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
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          
          const Text(
              'Balance Scale',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),

          const SizedBox(height: 20),

          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            // PROFILES #1

            Column(mainAxisAlignment: MainAxisAlignment.center, children: [

              Material (
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(100, 200, 200, 200), width: 3),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0)), //<-- SEE HERE
                    child: InkWell(
                      borderRadius: BorderRadius.circular(0),
                      //onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(0.2),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ),

              Text(
                'Player 1',
                style: TextStyle(color: Color.fromARGB(200, 200, 200, 200), fontSize: 15),
              ),

              Text(
                '$_score1',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),

              const SizedBox(height: 15,),

              Material (
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(100, 200, 200, 200), width: 3),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0)), //<-- SEE HERE
                    child: InkWell(
                      borderRadius: BorderRadius.circular(0),
                      //onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(0.2),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ),

              Text(
                'Player 2',
                style: TextStyle(color: Color.fromARGB(200, 200, 200, 200), fontSize: 15),
              ),

              Text(
                '$_score2',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),

              const SizedBox(height: 15,),

              Material (
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(100, 200, 200, 200), width: 3),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0)), //<-- SEE HERE
                    child: InkWell(
                      borderRadius: BorderRadius.circular(0),
                      //onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(0.2),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ),

              Text(
                'Player 3',
                style: TextStyle(color: Color.fromARGB(200, 200, 200, 200), fontSize: 15),
              ),

              Text(
                '$_score3',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),

              const SizedBox(height: 15,),

              Material (
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(100, 200, 200, 200), width: 3),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0)), //<-- SEE HERE
                    child: InkWell(
                      borderRadius: BorderRadius.circular(0),
                      //onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(0.2),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ),

              Text(
                'Player 4',
                style: TextStyle(color: Color.fromARGB(200, 200, 200, 200), fontSize: 15),
              ),

              Text(
                '$_score4',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),

            ],
            ),

          // CHOSEN NUMBERS #1 

          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Player 1',
                style: TextStyle(color: Colors.white, fontSize: 15),
                )
          ],),
          
          // CHOSEN NUMBERS #2

          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Player 5',
                style: TextStyle(color: Colors.white, fontSize: 15),
                )
          ],),


          // PROFILES #2

          Column(mainAxisAlignment: MainAxisAlignment.center, children: [

              Material (
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(100, 200, 200, 200), width: 3),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0)), //<-- SEE HERE
                    child: InkWell(
                      borderRadius: BorderRadius.circular(0),
                      //onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(0.2),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ),

              Text(
                'Player 1',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),

              const SizedBox(height: 15,),

              Material (
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(100, 200, 200, 200), width: 3),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0)), //<-- SEE HERE
                    child: InkWell(
                      borderRadius: BorderRadius.circular(0),
                      //onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(0.2),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ),

              Text(
                'Player 1',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),

              const SizedBox(height: 15,),

              Material (
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(100, 200, 200, 200), width: 3),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0)), //<-- SEE HERE
                    child: InkWell(
                      borderRadius: BorderRadius.circular(0),
                      //onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(0.2),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ),

              Text(
                'Player 1',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),

              const SizedBox(height: 15,),

              Material (
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color.fromRGBO(0, 120, 24, 1), width: 3),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(0)), //<-- SEE HERE
                    child: InkWell(
                      borderRadius: BorderRadius.circular(0),
                      //onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(0.2),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ),

              Text(
                '${widget.title}',
                style: TextStyle(color: Color.fromRGBO(0, 202, 40, 1), fontSize: 15),
              ),

            ],
            ),

        ]
      ),
        ]
      ),
      ),
      floatingActionButton: Container(
        height: 30,
        width: 30,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: _setWins,
            tooltip: 'Increment',
            child: const Icon(Icons.question_mark),
          ),
        )
         // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}
