import 'dart:math';

class FutureClass {
  Future<int> genFuture() async {
    final result = await Future.delayed(
      Duration(seconds: 3),
      () => -1,
    );
    return result;
  }
}

class StreamClass {
  Stream<int> genStream() async* {
    for (var i = 0; i < 8; i++) {
      yield i;
    }
  }
}

void main() {
  FutureClass f = FutureClass();
  f.genFuture().then((value) {
    print("value : $value");
  }).whenComplete(() {
    print("op is completed");
  }).catchError((e) {
    print(e);
  });

  //stream
  StreamClass s = StreamClass();
  s.genStream().listen((event) {
    print(event);
  }).onDone(() {
    print("completed");
  });
}
