import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes_ddd/domain/auth/user.dart';
import 'package:notes_ddd/domain/core/value_object.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(id: UniqueID.fromUniqueString(uid));
  }
}