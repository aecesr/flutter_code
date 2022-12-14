import 'package:first_flutter_app/pages/AppBarPage.dart';
import 'package:first_flutter_app/pages/FormPage1.dart';
import 'package:first_flutter_app/pages/HttpPage.dart';
import 'package:first_flutter_app/pages/MydialogPage.dart';
import 'package:first_flutter_app/pages/NewsContent.dart';
import 'package:first_flutter_app/pages/NewsPage.dart';
import 'package:flutter/material.dart';

import '../pages/AppBarPage1.dart';
import '../pages/ButtonPage.dart';
import '../pages/DataPage.dart';
import '../pages/DatePicker.dart';
import '../pages/DialogPage.dart';
import '../pages/DrawerPage.dart';
import '../pages/FloatingActionButtonPage.dart';
import '../pages/FormPage.dart';
import '../pages/FormWidget.dart';
import '../pages/Tabs.dart';

final Map<String, Function> routes = {
  '/': (context) => const Tabs(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/appbar': (context) => const AppBarPage(),
  '/appbar1': (context) => const AppBarPage1(),
  '/buttonPage': (context) => const ButtonPage(),
  '/drawerPage': (context) => const DrawerPage(),
  '/floatingActionButtonPage': (context) => const FloatingActionButtonPage(),
  '/formPage1': (context) => const FormPage1(),
  '/formWidget': (context) => const FormWidget(),
  '/datePage': (context) => const DatePage(),
  '/datePicker': (context) => const DatePickerPubDemo(),
  '/dialogPage': (context) => const DialogPage(),
  '/mydialog': (context) =>  MyDialogPage(),
  '/httpPage': (context) =>  const HttpPage(),
  '/newsPage': (context) =>  const NewsPage(),
  '/newsContent': (context,{arguments}) =>  NewsContent(arguments: arguments),
};
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};

// Map<String, Widget Function(BuildContext)> routers = {};
