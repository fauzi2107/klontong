import 'package:flutter/cupertino.dart';
import 'package:klontong/features/form/presentation/screen/form_screen.dart';

import '../../ui_export.dart';

Route? onGenerateRoute(RouteSettings settings) {
  Route<dynamic>? builder({
    Widget child = const Scaffold(),
    Widget Function(BuildContext context)? builder
  }) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: builder ?? (ctx) => child,
        settings: settings,
      );
    }

    return MaterialPageRoute(
      builder: builder ?? (ctx) => child,
      settings: settings,
    );
  }

  if (settings.name == HomeScreen.routeName) {
    return builder(child: const HomeScreen());
  } else if (settings.name == FormScreen.routeName) {
    final args = settings.arguments as Map?;

    return builder(child: FormScreen(
      data: args?['product'] as ProductModel?,
    ));
  }

  return null;
}