import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Users
{
  String id;
  String email;
  String name;
  String phone;

  Users({this.id, this.email, this.name, this.phone,});

  Users.fromSnapshot(DataSnapshot dataSnapshot)
  {
    id = dataSnapshot.key;
    if (dataSnapshot.value != null) {
      final data = dataSnapshot.value as Map;
      email = data['email'] as String;
      name = data["name"] as String;
      phone = data["phone"] as String;
    }
  }
}