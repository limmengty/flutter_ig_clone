import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/pages/home.dart';
import 'package:flutter_clone_ig/pages/newpost.dart';
import 'package:flutter_clone_ig/pages/profile.dart';
import 'package:flutter_clone_ig/pages/reel.dart';
import 'package:flutter_clone_ig/pages/search.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  int _selectedIndex = 0;
  bool _dark = true;

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
      _dark = !_dark;
    });
  }

  final List<Widget> _children = [
    const HomePage(),
    const SearchPage(),
    const NewPostPage(),
    MyReelPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _selectedIndex == 3 ? Colors.black : Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        fixedColor: Colors.black,
        // selectedItemColor: Colors.black,
        // unselectedItemColor: Colors.white,

        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.network(
              'https://www.svgrepo.com/show/368753/home.svg',
              width: 20,
              height: 20,
              color: _selectedIndex == 3 ? Colors.white : Colors.black,
            ),
            label: '',
            backgroundColor: _selectedIndex == 3 ? Colors.white : Colors.black,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.network(
              'https://www.svgrepo.com/show/521826/search.svg',
              width: 20,
              height: 20,
              color: _selectedIndex == 3 ? Colors.white : Colors.black,
            ),
            label: '',
            backgroundColor: _selectedIndex == 3 ? Colors.white : Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: _selectedIndex == 3 ? Colors.white : Colors.black,
            ),
            label: '',
            backgroundColor: _selectedIndex == 3 ? Colors.white : Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.network(
              "https://zeevector.com/wp-content/uploads/Instagram-Reels-Logo-PNG-Black.png",
              width: 20,
              height: 20,
              color: _selectedIndex == 3 ? Colors.white : Colors.black,
            ),
            label: '',
            backgroundColor: _selectedIndex == 3 ? Colors.white : Colors.black,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.network(
              "https://www.svgrepo.com/show/523092/user-circle.svg",
              width: 25,
              height: 25,
              color: _selectedIndex == 3 ? Colors.white : Colors.black,
            ),
            label: '',
            backgroundColor: _selectedIndex == 3 ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}
