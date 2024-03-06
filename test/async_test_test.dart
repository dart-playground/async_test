import 'package:async_test/async_test.dart';
import 'package:test/test.dart';

void main() {
  test('Must return string list', () {
    final result = getFutureList();
    // only check if complete
    expect(result, completes);
    // check type
    expect(result, completion(isA<List<String>>()));
    // check values
    expect(result, completion(equals(['first', 'second', 'third'])));
  });

  test('Must be return a Stream list of String', () {
    final result = getStreamList();
    expect(result, emitsInOrder(['first', 'second']));
    // expect(result, emitsDone);
  });
}
