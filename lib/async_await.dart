//비동기와 동기

//비동기(async) - 작업들을 서버에 요청 보냈을 때 동시에 실행할수있음
//동기(await) - 작업들을 동시에 실행 할 수 없고 다음 동작으로 차례대로 대기

//1. Future
//작업이 완료되면 결과를 받는 방식으로 비동기 처리
Future<void> getUserOrder() {
  return Future.delayed(Duration(seconds: 3), () => print('Large Latte'));
}

main() {
  getUserOrder();
  print('Fetching user order...');
}
// getUserOrder() 함수가 실행되면 3초뒤에 large latte를 출력
// 비동기 함수여서 getUserOrder 를 먼저 출력

//future retur타입
//Future<T> 함수 ??
// await으로 호출된다면 T타입
// await없이 호출된다면 future<T> 타입으로 return 

//Async& await  비동기 함수 정의

void main() async {} //동기 함수에서 비동기 함수로 변환
print(await createOrderMessage()); //await 사용하여 완료될 때까지 기다림


// Asynchronous
// Future<String> createOrderMessage() async {
// 모두 비동기 함수로 선언
////   var order = await getUserOrder();
//   return 'Your order is: $order';
// }

// Future<String> getUserOrder() {
//   return
//     Future.delayed(
//         Duration(seconds: 4), () => 'Large Latte');
// }

// // Asynchronous
// main() async {
//   print('Fetching user order...');
//   print(await createOrderMessage());
// }

// //result
// 'Fetching user order...'
// 'Your order is: Large Latte'

//future 와 async await 차이점
//future는 요청한 작업의 결과를 기다리지 않고 다음 작업으로 넘어감
//async await는 작업이 완료될때까지 기다렸다가 결과값을 받고 다음 작업으로 넘어감
//플러터에선 거의 비동기식으로 프로그램이 크면 비동기식 처리 방식을 써야한다.

void main(){
  print("one");
  print('two')

  //동기 처리 방식 직렬적이 구조이다. 
}

void main(){
  print("one");;
  Future.delayed(Duration(seconds: 0), () => print("two"));
  print("last");

//delayed는 duation 만큼의 지연 후 계산하는 생성자이다. 
//비동기 처리는 동기 처리가 끝난 뒤에 진행된다.

}