import 'package:flutter/material.dart';
import 'package:naengboo_front_jw/screen/home_screen/widgets/bottom_nav_bar_nonlogin.dart';
import 'package:naengboo_front_jw/screen/home_screen/widgets/recipe_card.dart';
import 'package:naengboo_front_jw/screen/login_and_register/login_screen.dart';

class HomeScreen_NonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //메인 상단부의 '로고', '냉장고를 부탁해', '로그인/회원가입 버튼' 부분
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row( // 여기 'Row'위젯에다가 로고랑, 우리 사이트명인 '냉장고를 부탁해' 넣었음. 근데 나중에 사이트명도 텍스트 말고 이미지로 같이 로고에 넣음 좋을것같음
          children: [
            Image.asset('asset/img/logo.png', height: 30),
            SizedBox(width: 8),
            Text(
              '냉장고를 부탁해',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          TextButton( // 로그인/회원가입 버튼
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()), // 이동할 화면
              );
            },
            child: Text('로그인/회원가입', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      body: Column( // '오늘의 레시피' Zone
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('오늘의 레시피', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          RecipeCard( // 추후에 레시피 여러개 화면에 넣을수있으니, 이런식으로 imagePath랑 foodName만 넣으면 붕어빵틀처럼 만들어주게 만듬
            imagePath: 'asset/img/recipe.png',
            foodName: 'Food Name',
          ),
          Divider(),
        ],
      ),
      bottomNavigationBar: BottomNavBarNonlogin(), // 대부분의 화면에 이 바가 있어야 하므로 자주 써먹을 수 있게 따로 클래스화했음
    );
  }
}
