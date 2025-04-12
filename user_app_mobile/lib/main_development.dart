import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:token_local_storage/token_local_storage.dart';
import 'package:user_app_api/user_app_api.dart';
import 'package:user_app_mobile/bootstrap.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final userAppApi = UserAppApi(
    tokenStorage: await TokenLocalStorage.create(
      storageDirectory: await getTemporaryDirectory(),
    ),
  );

  await bootstrap(userAppApi: userAppApi);
}
