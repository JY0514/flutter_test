//bloc은 디자인 패턴을  구현하는데 동움이 되는 상태관리 라이브러리

//BlocBuilder새로운 상태의 응답으로 위젯을 만드는 것을 처리한다.

//BlocSelector 새 값을 선택하여 업데이트를 필터링 할 수 있는 flutter 위젯

//BlocProvider
//BlocProvider.of<T> 자식에게 bloc을 제공하는 flutter 위젯 중속성 주입 위젯으로 사용

//MultiBlocProvider blocprovider위젯을 하나로 병합하는 flutter 위젯이다.

//BlocListener 블록의 상태 변경에 대한 응답으로 리스터를 호출하는 위젯  (blocbuilder와 비슷하다)

//MultiBlocListener (ultiBlocProvider)와 비슷함.

//BlocConsumer
//빌더와 리스너 호출

//RepositoryProvider
//RepositoryProvider.of<T> 를 통해 자식에게 저장소를 제공
//MultiRepositoryProvider

import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  // Use cubits...
}

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}

//BlocProvider와 Blocbuilder 예시

// BlocProvider(
//   create: (BuildContext context) => BlocA(),
//   child: ChildA(),
// );

// BlocProvider.of<BlocA>
