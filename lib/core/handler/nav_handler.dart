import '../../ui_export.dart';

Future<T?> pushNamedTo<T extends Object?>(BuildContext context, {
  required String routeName,
  Object? arguments
}) async {
  return await Navigator.of(context).pushNamed(routeName, arguments: arguments);
}

Future<T?> pushNamedRemoveTo<T extends Object?>(BuildContext context, {
  required String routeName,
  Object? arguments
}) async {
  return await Navigator.of(context)
      .pushReplacementNamed(routeName, arguments: arguments);
}

Future<T?> pushNameRemoveAll<T extends Object?>(BuildContext context, {
  required String routeName,
  Object? arguments
}) async {
  return await Navigator.of(context).pushNamedAndRemoveUntil(routeName,
          (route) => false, arguments: arguments);
}

void popBack<T extends Object?>(BuildContext context, {
  Object? arguments
}) async {
  return Navigator.of(context).pop([arguments]);
}