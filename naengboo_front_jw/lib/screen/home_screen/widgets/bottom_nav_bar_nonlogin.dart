import 'package:flutter/material.dart';
import 'package:naengboo_front_jw/screen/login_and_register/login_screen.dart';
import 'package:naengboo_front_jw/screen/home_screen/home_screen_nonlogin.dart';

class BottomNavBarNonlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: '레시피 검색'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: '찜한 레시피'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '내정보'),
      ],
      onTap: (index) {
        if (index == 0) {
          // 첫 번째 아이템 클릭 -> HomeScreen_NonLogin
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen_NonLogin()),
          );
        } else if (index == 1) {
          // 두 번째 아이템 클릭 -> LoginScreen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        } else if (index == 2) {
          // 세 번째 아이템 클릭 -> LoginScreen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        } else if (index == 3) {
          // 네 번째 아이템 클릭 -> LoginScreen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        }
      },
    );
  }
}
