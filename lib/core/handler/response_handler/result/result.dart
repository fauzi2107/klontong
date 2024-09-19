import '../../../../ui_export.dart';

part 'result.freezed.dart';

@freezed
class Result<V, E> with _$Result<V, E> {
  factory Result.ok(V value) = Ok<V, E>;
  factory Result.err(E error) = Err<V, E>;
}