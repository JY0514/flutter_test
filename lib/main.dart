//네비게이션바와 다크테마로 변경
//20220.9.28 에러남 먼가 구조가 잘못됨..

import 'package:flutter/material.dart';

void main() {
  runApp(bottomnaviState());
}

class bottomnaviState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          //테마 변경
          brightness: Brightness.dark,
          primaryColor: Color.fromARGB(255, 31, 31, 31),
          scaffoldBackgroundColor: Color.fromARGB(255, 128, 128, 128),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            bodyText2: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          )),
      home: DefaultTabController(
        //TabBarView  상태유지
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Navi'),
          ),
          body: TabBarView(
            children: [
              Container(
                // width: 200,
                // height: 190,
                // decoration:
                //     BoxDecoration(borderRadius: BorderRadius.circular(20)),
                color: Color.fromARGB(255, 120, 136, 145),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Text(
                  '장소\n디바이스 별칭\n\n\n관리요망',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Center(
                child: Text("행동일지"),
              ),
              Center(
                child: Text("내 정보"),
              ),
              Center(
                child: Text("전체"),
              ),
            ],
          ),
          extendBodyBehindAppBar: true, // add this line

          bottomNavigationBar: Container(
            color: Color.fromARGB(255, 61, 52, 52), //색상
            child: Container(
              height: 70,
              padding: EdgeInsets.only(bottom: 10, top: 5),
              child: const TabBar(
                //tab 하단 indicator size -> .label = label의 길이
                //tab 하단 indicator size -> .tab = tab의 길이
                indicatorSize: TabBarIndicatorSize.label,
                //tab 하단 indicator color
                indicatorColor: Color.fromARGB(255, 255, 255, 255),
                //tab 하단 indicator weight
                indicatorWeight: 2,
                //label color
                labelColor: Color.fromARGB(255, 255, 255, 255),
                //unselected label color
                unselectedLabelColor: Color.fromARGB(95, 88, 88, 88),
                labelStyle: TextStyle(
                  fontSize: 13,
                ),
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.home_outlined,
                    ),
                    text: '홈',
                  ),
                  Tab(
                    icon: Icon(Icons.note),
                    text: '행동일지',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.settings,
                    ),
                    text: '내 정보',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.apps,
                    ),
                    text: '전체',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
