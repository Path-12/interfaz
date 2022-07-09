import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Over Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: MainPage(),

      // Declare routes
      routes: {
        // Ruta inicial
        '/': (context) => MainPage(),
        // Segunda ruta
        '/second': (context) => SecondPage(),
        // Tercera ruta
        '/third': (context) => ThirdPage(),
      },
      initialRoute: '/',
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Lorem Ipsum App'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.loyalty, size: 200.0, color: Colors.blue),
              Text('LOREM IPSUM', style: TextStyle(fontSize: 40)),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/second'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                ),
                child: Text('     Sign Up     ', style: TextStyle(fontSize: 25)),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/third'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                ),
                child: Text('     Sign In     ', style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ),
      );
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(Icons.loyalty, size: 150.0, color: Colors.white),
          Text('LOREM IPSUM', style: TextStyle(fontSize: 40, color: Colors.white)),
          new Container(
              color: Colors.white,
              child: new Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                TextField(decoration: InputDecoration(icon: Icon(Icons.person), labelText: "User")),
                TextField(decoration: InputDecoration(icon: Icon(Icons.mail), labelText: "e-mail")),
                TextField(decoration: InputDecoration(icon: Icon(Icons.visibility), labelText: "Password")),
                Text(""),
                Text(""),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/third'),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text('     Sign In     ', style: TextStyle(fontSize: 25)),
                ),
                Text(""),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/'),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: Text('     Back     ', style: TextStyle(fontSize: 25)),
                ),
                Text(""),
                Text(""),
              ])),
        ]),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Icon(Icons.person, size: 150.0, color: Colors.white),
          Text('LOREM IPSUM', style: TextStyle(fontSize: 40, color: Colors.white)),
          new Container(
              width: 400,
              color: Colors.white,
              child: new Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Text(""),
                Text(""),
                ElevatedButton.icon(
                  onPressed: () => null,
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Icon(Icons.cloud, size: 30.0, color: Colors.grey),
                  label: Text('SOCIAL NETWORK', style: TextStyle(fontSize: 30, color: Colors.blueGrey)),
                ),
                Text(""),
                ElevatedButton.icon(
                  onPressed: () => null,
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Icon(Icons.menu_book, size: 30.0, color: Colors.grey),
                  label: Text('TRAVEL GUIDE', style: TextStyle(fontSize: 30, color: Colors.blueGrey)),
                ),
                Text(""),
                ElevatedButton.icon(
                  onPressed: () => null,
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Icon(Icons.notifications, size: 30.0, color: Colors.grey),
                  label: Text('NOTIFICATION', style: TextStyle(fontSize: 30, color: Colors.blueGrey)),
                ),
                Text(""),
                ElevatedButton.icon(
                  onPressed: () => null,
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Icon(Icons.contact_support, size: 30.0, color: Colors.grey),
                  label: Text('HELP', style: TextStyle(fontSize: 30, color: Colors.blueGrey)),
                ),
                Text(""),
                ElevatedButton.icon(
                  onPressed: () => null,
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  icon: Icon(Icons.send, size: 30.0, color: Colors.grey),
                  label: Text('FEED BACK', style: TextStyle(fontSize: 30, color: Colors.blueGrey)),
                ),
                Text(""),
                Text(""),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/second'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Text('     Log Out     ', style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                Text(""),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  child: Text('     Exit     ', style: TextStyle(fontSize: 30, color: Colors.white)),
                ),
                Text(""),
                Text(""),
              ])),
        ]),
      ),
    );
  }
}
