import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_application_1/bottom_navigation_tabs.dart';
import 'package:flutter_application_1/store/application_state.dart';
import 'package:flutter_application_1/store/root_reducer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Store<ApplicationState> _store = Store<ApplicationState>(rootReducer,
      initialState: ApplicationState.inital());

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: _store,
      child: MaterialApp(
        title: "Flutter 1st Project",
        theme: ThemeData(primarySwatch: Colors.amber),
        home: const BottomNavigationTabs(),
      ),
    );
  }
}
