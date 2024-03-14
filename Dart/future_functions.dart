class FutureClass {
  Future<int> genFuture() {
    final result = Future.delayed(Duration(seconds: 2), () => 4);
    return result;
  }
}

class StreamClass {
  static Stream<int> genStream() async* {
    for (var i = 0; i < 5; i++) {
      yield i;
    }
  }
}

void main() {
  FutureClass f = FutureClass();
  f.genFuture().then((value) {
    print("output  :$value");
  }).whenComplete(() {
    print("completed");
  }).catchError((e) {
    print("error : $e");
  });

  //stream

  StreamClass.genStream().listen((val) {
    print(val);
  }).onDone(() {
    print("completed");
  });
}
