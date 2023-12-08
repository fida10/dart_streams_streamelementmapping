/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/streams_streamelementmapping_base.dart';

/*

Practice Question 2: Stream Element Mapping

Task:

Write a function mapStreamElements that takes a Stream<int> and a 
mapping function (int Function(int)). 
It should apply the mapping function to each element 
in the stream and return a new Stream<int> with the mapped values.
 */

Stream<int> mapStreamElements(Stream<int> input, int Function(int) callback) async* {
  await for (var indivInput in input){
    yield callback(indivInput);
  }
}