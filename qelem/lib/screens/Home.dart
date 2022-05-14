import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  // Todo: is there a better way
  static MaterialColor? purple = const MaterialColor(
    0xFF6E00EE,
    <int, Color>{
      50: Color(0xffce5641 ),//10%
      100: Color(0xFFEA80FC),//20%
      200: Color(0xffa04332),//30%
      300: Color(0xff89392b),//40%
      400: Color(0xffD500F9),//50%
      500: Color(0xff6E00ee),//60%
      600: Color(0xff5600e8),//70%
      700: Color(0xff3700b3),//80%
      800: Color(0xff30009c),//90%
      900: Color(0xff23036a),//100%
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        // fontFamily: 'Roboto',
        primarySwatch: purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  Widget bottomNav()
  {
    return BottomNavigationBar(
      backgroundColor: Home.purple,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_mark),
          label: 'My Questions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: _onTap,
    );
  }

  void _onTap(int index)
  {
    _selectedIndex = index;
    setState(() {

    });
  }
}