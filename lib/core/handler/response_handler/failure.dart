import '../../../ui_export.dart';

abstract class Failure implements Exception {
  Failure(this.message);
  final String message;

  @override
  String toString() => message;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Failure && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class NoMessageFailure extends Failure {
  NoMessageFailure() : super("");
}

class UnknownFailure extends Failure {
  UnknownFailure(String message) : super(message);
}

class RawFailure extends Failure{
  RawFailure(String message) : super(message);
}

Future<Failure> errorCatcher({
  required Object e,
  StackTrace? stackTrace,
  bool isUsingAgentCode = true,
  bool showWithStatusCode = true,
}) async {
  if (e is DioException) {
    return RawFailure(e.message??'');
  }

  return UnknownFailure(e.toString());
}