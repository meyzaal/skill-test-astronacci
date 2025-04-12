// ignore_for_file: prefer_const_constructors
import 'dart:io';

import 'package:test/test.dart';
import 'package:token_local_storage/token_local_storage.dart';
import 'package:user_app_api/user_app_api.dart';

void main() {
  group('UserAppApi', () {
    test('can be instantiated', () async {
      expect(
        UserAppApi(
          tokenStorage: await TokenLocalStorage.create(
            storageDirectory: Directory(''),
          ),
        ),
        isNotNull,
      );
    });
  });
}
