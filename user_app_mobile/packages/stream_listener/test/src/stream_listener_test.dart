// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:stream_listener/stream_listener.dart';

void main() {
  group('StreamListener', () {
    test('can be instantiated', () {
      expect(
        StreamListener(Stream.periodic(const Duration(seconds: 1), (i) => i)),
        isNotNull,
      );
    });
  });
}
