Stream<int> generateNumbers() async* {
  for (var i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 2));
    print(i);
    yield i;
  }
}
