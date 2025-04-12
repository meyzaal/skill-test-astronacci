import 'dart:io';

import 'package:fresh_dio/fresh_dio.dart';
import 'package:hive_ce/hive.dart';
// ignore: implementation_imports
import 'package:hive_ce/src/hive_impl.dart';
import 'package:meta/meta.dart';
import 'package:synchronized/synchronized.dart';
import 'package:token_local_storage/hive_registrar.g.dart';
import 'package:token_local_storage/token_local_storage.dart';

/// {@template token_local_storage}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class TokenLocalStorage extends TokenStorage<CachedOAuth2Token> {
  /// {@macro token_local_storage}
  TokenLocalStorage._(this._box);

  final Box<CachedOAuth2Token> _box;

  @visibleForTesting
  static late HiveInterface hive;

  static Future<TokenLocalStorage> create({
    required Directory storageDirectory,
  }) async {
    return _lock.synchronized(() async {
      hive = HiveImpl();
      hive
        ..init(storageDirectory.path)
        ..registerAdapters();

      final box = await hive.openBox<CachedOAuth2Token>(_key);
      return TokenLocalStorage._(box);
    });
  }

  static final _lock = Lock();
  static const _key = 'token_storage_key';

  @override
  Future<void> delete() async {
    if (_box.isOpen) return _lock.synchronized(() => _box.delete(_key));
  }

  @override
  Future<CachedOAuth2Token?> read() async {
    return _box.isOpen ? _lock.synchronized(() => _box.get(_key)) : null;
  }

  @override
  Future<void> write(CachedOAuth2Token token) async {
    if (_box.isOpen) return _lock.synchronized(() => _box.put(_key, token));
  }
}
