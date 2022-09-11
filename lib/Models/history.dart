import 'package:firebase_database/firebase_database.dart';

class History
{
  String paymentMethod;
  String createdAt;
  String status;
  String fares;
  String dropOff;
  String pickup;

  History({this.paymentMethod, this.createdAt, this.status, this.fares, this.dropOff, this.pickup});

  History.fromSnapshot(DataSnapshot snapshot)
  {
    if (snapshot.value != null) {
      final data = snapshot.value as Map;
      paymentMethod = data["payment_method"] as String;
      createdAt = data["created_at"] as String;
      status = data["status"] as String;
      fares = data["fares"] as String;
      dropOff = data["dropoff_address"] as String;
      pickup = data["pickup_address"] as String;
    }
  }
}
