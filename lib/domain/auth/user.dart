import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_ddd/domain/core/value_object.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User{
  const factory User({
    @required UniqueID id,
  }) = _User;
}