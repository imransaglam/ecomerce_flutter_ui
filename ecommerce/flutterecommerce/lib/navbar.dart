import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterecommerce/homescreen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages(),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff67C4A7),
          unselectedItemColor: Color(0xff939393),
          currentIndex: _currentIndex,
          unselectedLabelStyle: TextStyle(color: Color(0xff939393)),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            // Pages();
          },
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  //     Pages();
                },
                icon: Image.asset(
                  "assets/home.png",
                ),
                iconSize: 28,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  //    Pages();
                },
                icon: Image.asset(
                  "assets/heart.png",
                ),
                 iconSize: 28,
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  //    Pages();
                },
                icon: Image.asset(
                  "assets/note.png",
                ),
                 iconSize: 28,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                  //  Pages();
                },
                icon: Image.asset(
                  "assets/profile.png",
                ),
                 iconSize: 28,
              ),
              label: "Account",
            ),
          ]),
    );
  }

  Widget Pages() {
    switch (_currentIndex) {
      case 0:
        return Homescreen();
        break;
      case 1:
        return Homescreen();
        break;
      case 2:
        return Homescreen();
        break;
      case 3:
        return Homescreen();
        break;
      default:
        return Container();
    }
  }
}
