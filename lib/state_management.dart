//state란 data
//사용자에게 보여주는 data이다.

//StateleeWidget
//내부적인 상태를 가진다.
//변경할수없는 상태를 가진 widget이다.

//StatefulWidget
//변경 가능한 상태를 가진 widget이다.
//

//복잡한 widget tree 에는 setState 패키지로 해결?

// 1. InheritedWidget & Scoped Model
// 2. Provider
import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();

    //변경을 감지 할 수 있도록 ChangeNotifierProvider
    //Provider.of 를 호출하면 상태모델을 참조하는 widget들이 다시 build가 되기 때문에 무거운 작업을 하는 widget이 rebuild되면서 성능저하..
  }
}

// 3. Bloc & Rx
// 4. Redux, MobX
//위에 네가지의 패키지가 상태관리를 도와줌
