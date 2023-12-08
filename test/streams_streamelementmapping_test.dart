import 'package:streams_streamelementmapping/streams_streamelementmapping.dart';
import 'package:test/test.dart';

void main() {
  test('mapStreamElements correctly maps stream elements', () async {
    var input = Stream.fromIterable([1, 2, 3]);
    var mapped = mapStreamElements(input, (n) => n * 2);
    expect(await mapped.toList(), equals([2, 4, 6]));
  });

  test('mapStreamElements handles an empty stream', () async {
    var input = Stream<int>.empty();
    var mapped = mapStreamElements(input, (n) => n * 2);
    expect(await mapped.toList(), isEmpty);
  });
}
