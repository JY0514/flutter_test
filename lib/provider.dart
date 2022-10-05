import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab/count_provider.dart';
import 'package:tab/provider_home.dart';

// import 'provider/count_provider.dart';
// import 'screen/provider_home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider(
        //변하는 값 처리
        create: (_) => CountProvider(),
        child: Home(),
      ),
    );
  }
}

//provider mainpage

//provider 쓰는 이유
//관심사의 분리
//데이터 공유
//간결한 코드

// ChangeNotifierProvider 변하는 값 처리

//MultiProvider

//ChangeNotifier
// 원하는 클래스에 changenotifier 상속
//notifyListeners() 함수 호출

class CartModel extends ChangeNotifier {
  /// 내부적으로 사용될 Cart의 목록
  final List<Item> _items = [];

  /// An unmodifiable view of the items in the cart.
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  /// 현재 아이템들의 모든 가격
  int get totalPrice => _items.length * 42;

  /// 아이템이 추가되면 리스너에게 아이템이 추가됨을 알린다.
  void add(Item item) {
    _items.add(item);
    // 해당 ChangeNorifiter를 감시하고있는 위젯들에게
    // 상태변화를 알리고 rebuild 하도록 한다.
    notifyListeners();
  }

  /// 아이템 목록을 클리어 하고 리스너에게 이를 알린다.
  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}

//ChangeNotifierProvider
// changenotifier을 전달



// Consumer
// 제네릭 타입? 반드시 지정
//builder 인자 요구 -> ChangeNotifier에서 notifyListeners() 함수 호출

// provider.of 

//watch, read, select 
//watch - provider.of listen 이 true인 상태와 동일 값의 변화를 읽고 위젯을 rebuild
// read - provider.of listen 이 false인 상태와 동일 값만 읽어옴
//select - provider의 값의 일부만 읽을때 사용 == selector 