import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class User with _$User {
  factory User({
    required String username,
    required String password,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
  @override
  Map<String, dynamic> toJson() => super.toJson();
}
