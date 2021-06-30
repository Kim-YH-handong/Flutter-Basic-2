import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//appBar생성 후 안에 몇가지 다른 자세한 것들 선
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,


        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              print('Shoping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer( //클릭하면 왼쪽 화면이 슬라이드 하면서 만들어지게 하는 것
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/unnamed.jpg'),
              ),
              otherAccountsPictures: <Widget> [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/Unknown.png'),
                  backgroundColor: Colors.amberAccent,
                )
              ],
              accountName: Text('Younghun'),
              accountEmail: Text('21800125@handong.edu'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration( //왼쪽으로 나오는 drawer 박스 디자인
                color: Colors.red[100],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              )
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),//오른쪽 끝으로 가는 것
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Settings'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),//오른쪽 끝으로 가는 것
            ),ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),//오른쪽 끝으로 가는 것
            )

          ],
        ),
      ),
    );
  }
}

/*
* leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때 사용
* actions: 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 사용
* onPressed: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는
* 이벤트를 정의한 곳
*
* Drawer: 안에 UserAccounDrawerHeader & ListTile존재*/

