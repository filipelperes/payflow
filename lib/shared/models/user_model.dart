// ignore_for_file: empty_constructor_bodies

import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, this.photoURL});

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
        name: map['name'],
        photoURL: map['photoURL'],
      );

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(jsonDecode(source));

  Map<String, dynamic> toMap() => {
        'name': name,
        'photoURL': photoURL,
      };

  String toJson() => jsonEncode(toMap());
}
