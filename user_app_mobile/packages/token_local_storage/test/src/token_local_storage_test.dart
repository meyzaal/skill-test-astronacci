// ignore_for_file: prefer_const_constructors
import 'dart:io';

import 'package:test/test.dart';
import 'package:token_local_storage/token_local_storage.dart';

void main() {
  group('TokenLocalStorage', () {
    test('can be instantiated', () {
      expect(
        TokenLocalStorage.create(storageDirectory: Directory('')),
        isNotNull,
      );
    });
  });
}
