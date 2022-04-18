import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:learn_flutter_firebase/app_constants/app_routes.dart';
import 'package:learn_flutter_firebase/app_constants/app_string.dart';
import 'package:learn_flutter_firebase/app_constants/app_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///
    final _appString = AppString.instance;
    final _appThemes = AppThemes.instance;
    final _appRoutes = AppRoutes.instance;

    ///
    return MaterialApp(
      title: _appString.flutterProjectTitle,
      debugShowCheckedModeBanner: false,
      theme: _appThemes.themes,
      initialRoute: AppRoutes.initRoute,
      routes: _appRoutes.routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
