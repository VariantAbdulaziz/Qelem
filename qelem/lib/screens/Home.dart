import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qelem/common/AppPalette.dart';
import 'package:qelem/common/Constants.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.home,
      theme: ThemeData(
        primarySwatch: AppPalette.qelemPurple,

      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  _HomePageState createState()
  {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.home),
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  Widget bottomNav()
  {
    return BottomNavigationBar(
      backgroundColor: AppPalette.qelemPurple,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: Constants.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          label: Constants.myQuestions,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: Constants.profile,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedLabelStyle:
      GoogleFonts.comfortaa(color: Colors.white, fontSize: 13),
      unselectedLabelStyle:
      GoogleFonts.comfortaa(color: Colors.grey, fontSize: 13),
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