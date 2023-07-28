import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'data/service/hive_service.dart';

import 'app.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.openBox("login");
  HiveService hive = await HiveService.instance;
  int? login = hive.getData("login");
  runApp(
    MyApp(
      home: login,
      login: login,
    ),
  );
}
