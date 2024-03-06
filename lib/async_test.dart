Future<List<String>> getFutureList() async {
  Future.delayed(Duration(seconds: 2));
  return ['first', 'second', 'third'];
}

Stream<String> getStreamList() async* {
  yield 'first';
  Future.delayed(Duration(seconds: 1));
  yield 'second';
}

